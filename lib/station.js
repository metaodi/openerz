'use strict';

var _ = require('underscore');
var db = require('./db');

exports.handler = stationHandler;

async function stationHandler(request, h) {
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
