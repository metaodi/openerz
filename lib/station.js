'use strict';

var _ = require('underscore');
var db = require('./db');
var format = require('./format');

exports.handler = stationHandler;

function stationHandler() {
    return async function(request, h) {
        try {
            var docs = await db.station(
                _.omit(request.query, [ 'sort', 'limit', 'offset' ]),
                request.query.sort,
                request.query.limit,
                request.query.offset
            );
            return format.stationEntry(docs);
        } catch (err) {
            console.log('error', err);
            throw err;
        }
    };
}
