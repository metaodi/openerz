var mongojs = require('mongojs');
var Moment = require('moment');
var _ = require('underscore');

exports.station = station;
exports.calendar = calendar;

var dbUrl = process.env.MONGOLAB_URI || process.env.MONGO_URI || 'mongodb://localhost/openerz',
    coll = [ "calendar", "station" ];

function logDbError(err) {
    console.log('database error', err);
}

function calendar(callback, params, sort, limit, offset) {
    var db = mongojs(dbUrl, coll);
    db.on('error', logDbError);
    var dbParams = parseParams(params) || {};
    sort = parseSort(sort) || {};

    db.calendar.find(dbParams, { _id: 0 }).count(function(err, count) {
        db.calendar.find(dbParams, { _id: 0 }).sort(sort).skip(offset).limit(limit, function(err, docs) {
            if (err) {
                callback(err);
                db.close();
                return;
            }

            // make sure the output is in the localtime zone
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
            callback(null, result);
            db.close();
        });
    });
}

function station(callback, params, sort, limit, offset) {
    var db = mongojs(dbUrl, coll);
    db.on('error', logDbError);
    var dbParams = parseParams(params) || {};
    sort = parseSort(sort) || {};

    db.station.find(dbParams, { _id: 0 }).count(function(err, count) {
        db.station.find(dbParams, { _id: 0 }).sort(sort).skip(offset).limit(limit, function(err, docs) {
            if (err) {
                callback(err);
                db.close();
                return;
            }
            var result = {
                '_metadata': {
                    'total_count': count
                },
                'result': docs
            };
            callback(null, result);
            db.close();
        });
    });
}

function parseParams(params) {
    /* jshint maxcomplexity: 18 */
    if (!params) {
        return false;
    }
    var dbParams = {},
        regex,
        startDate,
        endDate;

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
    if (undefined !== params['zip']) {
        dbParams['zip'] = params['zip'];
    }
    if (undefined !== params['tour']) {
        dbParams['tour'] = params['tour'];
    }
    if (undefined !== params['start'] || undefined !== params['end']) {
        dbParams['date'] = {};
        if (undefined !== params['start']) {
            startDate = Moment(params['start']);
            if (startDate.isValid()) {
                dbParams['date']['$gte'] = startDate.toDate();
            }
        }
        if (undefined !== params['end']) {
            endDate = Moment(params['end']);
            if (endDate.isValid()) {
                dbParams['date']['$lte'] = endDate.toDate();
            }
        }
    }
    if (undefined !== params['station']) {
        regex = new RegExp(".*" + params['station'] + ".*");
        dbParams['station'] = { $regex: regex, $options: 'i' };
    }
    if (undefined !== params['name']) {
        regex = new RegExp(".*" + params['name'] + ".*");
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
