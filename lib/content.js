var _ = require('underscore');
var Accepts = require('accepts');
var Boom = require('boom');

exports.negotiate = negotiate;

function negotiate(request, h, options) {
    var validFormats;
    var format;

    if (request.orig.params.format) {
        // format in the URL
        validFormats = _.pluck(options, 'ext');
        format = request.params.format.slice(1);
    } else {
        // format in Accept header
        var accept = Accepts(request.raw.req);
        validFormats = _.pluck(options, 'mimetype');
        format = accept.types(validFormats);
    }

    var result = _.find(options, function(obj) {
        return (format === obj.ext) || (format === obj.mimetype);
    });

    if (result) {
        var response = h.response(result.response);
        response.header('Content-Type', result.mimetype);
        return response;
    } else {
        throw Boom.notAcceptable('Client must use one of the valid formats: ' + validFormats.join(', '));
    }
}
