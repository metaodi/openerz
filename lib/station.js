'use strict';

var _ = require('underscore');
var db = require('./db');

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
            return docs;
        } catch (err) {
            console.log('error', err);
            throw err;
        }
    }
}
