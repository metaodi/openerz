var _ = require('underscore');
var Fanci = require('fanci');
var content = require('./content');

exports.handler = geoHandler;

var geoContent = require('../json/cargotram.json');
var template = {
    'name': 'properties.Name',
    'zip': 'properties.PLZ',
    'city': 'properties.Ort',
    'website': 'properties.www',
    'coordinates': 'geometry.coordinates'
};
var reducedGeoContent = _.map(geoContent.features, function(feature) {
    return Fanci.transform(feature, template);
});

function geoHandler() {
    return function(request, reply) {
        content.negotiate(request, reply, [
            {
                ext: 'json',
                mimetype: 'application/json',
                response: reducedGeoContent
            },
            {
                ext: 'geojson',
                mimetype: 'application/vnd.geo+json',
                response: geoContent
            }
        ]);
    };
}
