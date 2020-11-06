var Moment = require('moment');
var _ = require('underscore');
var data = require('./data');

exports.station = station;
exports.calendar = calendar;

var stationDb = null;
var calendarDb = null;

async function calendar(params, sort, limit, offset) {
    var db = await getCalendarDb();
    return result(db, 'calendar', params, sort, limit, offset);
}

async function getCalendarDb() {
    if (calendarDb) {
        return Promise.resolve(calendarDb);
    }
    calendarDb = await data.loadCalendarData();
    return calendarDb;
}

async function station(params, sort, limit, offset) {
    var db = await getStationDb();
    return result(db, 'station', params, sort, limit, offset);
}

async function getStationDb() {
    if (stationDb) {
        return Promise.resolve(stationDb);
    }
    stationDb = await data.loadStationData();
    return stationDb;

}

async function result(db, collection, params, sort, limit, offset) {
    var dbParams = parseParams(params) || {};
    sort = parseSort(sort) || '';

    try {
        var [count, docs] = await Promise.all([
            db(dbParams).count(),
            db(dbParams).order(sort).start(offset).limit(limit).map(removeInternalFields)
        ]);
    } catch (err) {
        throw `Error while getting ${collection} from db: ${err}`;
    }
    // make sure the output is in the local timezone
    _.map(docs, function(doc) {
        var dateObj = Moment(doc['date']);
        doc['date'] = dateObj.format('YYYY-MM-DD');
    });
    var result = {
        '_metadata': {
            'total_count': count
        },
        'result': docs
    };
    return result;
}

function removeInternalFields(record) {
    return _.omit(record, (v, k) => { 
        return k.startsWith('___');
    });
}

function parseParams(params) {
    if (!params) {
        return false;
    }
    var dbParams = {};

    dbParams = setTypeParams(dbParams, params);
    dbParams = setParam(dbParams, params, 'zip', 'zip');
    dbParams = setParam(dbParams, params, 'kind.glass', 'glass');
    dbParams = setParam(dbParams, params, 'kind.oil', 'oil');
    dbParams = setParam(dbParams, params, 'kind.metal', 'metal');
    dbParams = setRegexParam(dbParams, params, 'station', 'station');
    dbParams = setRegexParam(dbParams, params, 'name', 'name');
    dbParams = setDateParams(dbParams, params);
    dbParams = setTourParam(dbParams, params);

    return dbParams;
}

function setParam(dbParams, params, dbField, field) {
    if (undefined !== params[field]) {
        dbParams = createPath(dbParams, dbField, params[field]);
    }
    return dbParams;
}

//Code from https://lowrey.me/create-an-object-by-path-in-javascript-2/
const createPath = (obj, path, value = null) => {
    path = typeof path === 'string' ? path.split('.') : path;
    let current = obj;
    while (path.length > 1) {
        const [head, ...tail] = path;
        path = tail;
        if (current[head] === undefined) {
            current[head] = {};
        }
        current = current[head];
    }
    current[path[0]] = value;
    return obj;
};

function setRegexParam(dbParams, params, dbField, field) {
    if (undefined !== params[field]) {
        var re = new RegExp('.*' + params[field] + '.*', 'i');
        if (params[field].includes('^') || params[field].includes('$')) {
            re = new RegExp(params[field], 'i');
        }
        dbParams[dbField] = { regex: re};
    }
    return dbParams;
}

function setTourParam(dbParams, params) {
    if (undefined !== params['tour']) {
        dbParams['tour'] = ['', params['tour']];
    }
    return dbParams;
}

function setTypeParams(dbParams, params) {
    if (undefined !== params['type']) {
        dbParams['type'] = params['type'];
    }
    if (undefined !== params['types']) {
        dbParams['type'] = {};
        if (params['types'] instanceof Array) {
            dbParams['type'] = params['types'];
        } else {
            dbParams['type'] = [params['types']];
        }
    }
    return dbParams;
}

function setDateParams(dbParams, params) {
    const setValidDate = function(dbParams, source, target) {
        if (undefined !== source) {
            let checkDate = Moment(source);
            if (checkDate.isValid()) {
                dbParams['date'][target] = checkDate.toDate();
            }
        }
        return dbParams;
    };
    if (undefined !== params['start'] || undefined !== params['end']) {
        dbParams['date'] = {};
        dbParams = setValidDate(dbParams, params['start'], 'gte');
        dbParams = setValidDate(dbParams, params['end'], 'lte');
    }
    return dbParams;
}

function parseSort(sort) {
    if (!sort) {
        return false;
    }
    var sortArr = sort.split(',');
    if (!Array.isArray(sortArr)) {
        sortArr = [ sortArr ];
    }

    var dbSort = [];
    _.each(sortArr, function(sort) {
        var sortParam = sort.split(':');
        var param = sortParam[0];
        var order = ' asec';
        if (sortParam[1]) {
            order = ` ${sortParam[1]}`;
        }
        dbSort.push(`${param}${order}`);
    });

    return dbSort.join(', ');
}
