var _ = require('underscore');
var Accepts = require('accepts');
var Boom = require('boom');

exports.negotiate = negotiate

function negotiate(request, reply, options) {
    var format;

    if (request.orig.params.format) {
        // format in the URL
        format = request.params.format.slice(1);
    } else {
        // format in Accept header
        var accept = Accepts(request.raw.req);
        var validFormats = _.pluck(options, 'mimetype');
        format = accept.types(validFormats);
    }

    var result = _.find(options, function(obj) {
        return (format === obj.ext) || (format === obj.mimetype);
    });

    if (result) {
        reply(result.response).header('Content-Type', result.mimetype);
    } else {
        reply(Boom.notAcceptable('Client must use one of the valid formats: ' + validFormats.join(', ')));
    }
}
