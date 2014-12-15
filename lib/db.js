var mongojs = require('mongojs');
var Moment = require('moment');
var _ = require('underscore');

exports.station = station;
exports.calendar = calendar;

var dbUrl = process.env.MONGOLAB_URI || 'mongodb://localhost/openerz',
    coll = ["calendar", "station"],
    db = mongojs(dbUrl, coll);

db.on('error', function(err) {
    console.log('database error', err);
})

function calendar(callback, params, sort) {
    db.open();
    var dbParams = parseParams(params) || {};
    var sort = parseSort(sort) || {};

    console.log("dbParams", dbParams);
    console.log("dbSort", sort);

    db.calendar.find(dbParams, {_id: 0}).sort(sort, function(err, docs) {
        if (err) {
            callback(err);
            return;
        }

        //make sure the output is in the localtime zone
        _.map(docs, function(doc) {
            dateObj = Moment(doc['date']);
            doc['date'] = dateObj.format();
            console.log(doc);
        });
        callback(null, docs);
    });
};

function station(callback, params, sort) {
    db.open();
    var dbParams = parseParams(params) || {};
    var sort = parseSort(sort) || {};

    console.log("dbParams", dbParams);
    console.log("dbSort", sort);

    db.station.find(dbParams, {_id: 0}).sort(sort, function(err, docs) {
        if (err) {
            callback(err);
            return;
        }
        callback(null, docs);
    });
};

function parseParams(params) {
    if (!params) {
        return false;
    }
    console.log("parseparams", params);
    var dbParams = {};
    if (undefined !== params['type']) {
    dbParams['type'] = params['type'];
    }
    if (undefined !== params['zip']) {
        dbParams['zip'] = params['zip'];
    }
    if (undefined !== params['start'] || undefined !== params['end']) {
        dbParams['date'] = {};
        if (undefined !== params['start']) {
            var startDate = Moment(params['start']);
            if (startDate.isValid()) {
                dbParams['date']['$gte'] = startDate.toDate();
            }
        }
        if (undefined !== params['end']) {
            var endDate = Moment(params['end']);
            if (endDate.isValid()) {
                dbParams['date']['$lte'] = endDate.toDate();
            }
        }
    }
    if (undefined !== params['tram_stop']) {
        var regex = new RegExp(".*" + params['tram_stop'] + ".*");
        dbParams['tram_stop'] = { $regex: regex, $options: 'i' };
    }
    if (undefined !== params['name']) {
        var regex = new RegExp(".*" + params['name'] + ".*");
        dbParams['name'] = { $regex: regex, $options: 'i' };
    }
    if (undefined !== params['glass']) {
        dbParams['kind.glass'] = params['glass'];
    }
    if (undefined !== params['oil']) {
        dbParams['kind.oil'] = params['oil'];
    }
    if (undefined !== params['metal']) {
        dbParams['kind.metal'] = params['metal'];
    }
    return dbParams;
}

function parseSort(sort) {
    if (!sort) {
        return false;
    }
    sortArr = sort.split(','); 
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
