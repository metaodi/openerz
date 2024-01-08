'use strict';

var _ = require('underscore');
var Boom = require('@hapi/boom');
var db = require('./db');

exports.handler = areaHandler;

// eslint-disable-next-line max-lines-per-function
function areaHandler() {
    var getParams = function(query) {
        var params = _.omit(query, [ 'sort', 'limit', 'offset', 'lang' ]);
        return params;
    };
    return async function(request, h) {
        var params = getParams(request.query);

        try {
            var docs = await db.area(params, request.query.sort, request.query.limit, request.query.offset);
            return docs;
        } catch (err) {
            console.log('error', err);
            throw Boom.badRequest('Invalid request: ' + err);
        }
    };
}
