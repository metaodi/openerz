var mongoist = require('mongoist');
var Moment = require('moment');
var _ = require('underscore');

exports.station = station;
exports.calendar = calendar;

var dbUrl = process.env.MONGOLAB_URI || process.env.MONGO_URI || 'mongodb://localhost/openerz';

function logDbError(err) {
    console.log('database error', err);
}

async function calendar(params, sort, limit, offset) {
    var db = mongoist(dbUrl);
    db.on('error', logDbError);
    var dbParams = parseParams(params) || {};
    sort = parseSort(sort) || {};

    try {
        var [count, docs] = await Promise.all([
            db.calendar.count(dbParams, { _id: 0 }),
            db.calendar.findAsCursor(dbParams, { _id: 0 }).sort(sort).skip(offset).limit(limit).toArray()
        ]);
    } catch (err) {
        db.close();
        throw 'Error while getting calendar from db: ' + err;
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
    db.close();
    return result;
}

async function station(params, sort, limit, offset) {
    var db = mongoist(dbUrl);
    db.on('error', logDbError);
    var dbParams = parseParams(params) || {};
    sort = parseSort(sort) || {};

    try {
        var [count, docs] = await Promise.all([
            db.station.count(dbParams, { _id: 0 }),
            db.station.findAsCursor(dbParams, { _id: 0 }).sort(sort).skip(offset).limit(limit).toArray()
        ]);
    } catch (err) {
        db.close();
        throw 'Error while getting station from db: ' + err;
    }

    var result = {
        '_metadata': {
            'total_count': count
        },
        'result': docs
    };
    db.close();
    return result;
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
        dbParams[dbField] = params[field];
    }
    return dbParams;
}

function setRegexParam(dbParams, params, dbField, field) {
    if (undefined !== params[field]) {
        var regex = new RegExp('.*' + params[field] + '.*');
        dbParams[dbField] = { $regex: regex, $options: 'i' };
    }
    return dbParams;
}

function setTourParam(dbParams, params) {
    if (undefined !== params['tour']) {
        dbParams['$or'] = [ { 'tour': params['tour']}, {'tour': { '$exists' : false } }];
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
            dbParams['type']['$in'] = params['types'];
        } else {
            dbParams['type']['$in'] = [params['types']];
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
        dbParams = setValidDate(dbParams, params['start'], '$gte');
        dbParams = setValidDate(dbParams, params['end'], '$lte');
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

    var dbSort = {};
    _.each(sortArr, function(sort) {
        var sortParam = sort.split(':');
        var param = sortParam;
        var order = 1;
        if (Array.isArray(sortParam)) {
            param = sortParam[0];
            if (sortParam[1] === 'desc') {
                order = -1;
            }
        }
        dbSort[param] = order;
    });

    return dbSort;
}
