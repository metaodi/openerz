var _ = require('underscore');
var Accepts = require('accepts');
var Boom = require('boom');
var Fanci = require('fanci');

exports.handler = geoHandler;

var content = require('../json/cargotram.json');
var template = {
    'name': 'properties.Name',
    'zip': 'properties.PLZ',
    'city': 'properties.Ort',
    'website': 'properties.www',
    'coordinates': 'geometry.coordinates'
};
var reducedContent = _.map(content.features, function(feature) {
    return Fanci.transform(feature, template);
});

function geoHandler() {
    return function(request, reply) {
        var validFormats;
        var format;
        var errorMsg;

        if (request.params.format) {
            // format in the URL /api/tramstop.json
            format = request.params.format.slice(1);
            validFormats = [ 'json', 'geojson' ];
            errorMsg = 'Client must either use json or geojson as format';
        } else {
            // format in Accept header
            var accept = Accepts(request.raw.req);
            validFormats = [ 'application/json', 'application/vnd.geo+json' ];
            format = accept.types(validFormats);
            errorMsg = 'Client must either accept application/json or application/vnd.geo+json';
        }

        var geoJsonContentType = 'application/vnd.geo+json';
        switch (format) {
            case validFormats[0]:
                reply(reducedContent);
                break;
            case validFormats[1]:
                reply(content).header('Content-Type', geoJsonContentType);
                break;
            default:
                reply(Boom.notAcceptable(errorMsg));
        }
    };
}
