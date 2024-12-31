'use strict';

var _ = require('underscore');
var Boom = require('@hapi/boom');
var content = require('./content');
var db = require('./db');
var format = require('./format');

exports.handler = calendarHandler;

function calendarHandler(type) {
    var getParams = function(query) {
        var params = _.omit(query, [ 'sort', 'limit', 'offset', 'lang' ]);
        if (type) {
            params['type'] = type;
        }

        return params;
    };
    return async function(request, h) {
        var params = getParams(request.query);

        var lang = request.query.lang || 'en';

        try {
            var docs = await db.calendar(params, request.query.sort, request.query.limit, request.query.offset);
            return content.negotiate(request, h, [
                {
                    ext: 'json',
                    mimetype: 'application/json',
                    response: format.calendarEntry(docs)
                },
                {
                    ext: 'ics',
                    mimetype: 'text/calendar',
                    response: format.convertToIcal(docs.result, lang)
                }
            ]);
        } catch (err) {
            console.log('error', err);
            throw Boom.badRequest('Invalid request: ' + err);
        }
    };
}
