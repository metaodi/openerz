var _ = require('underscore');
var Fanci = require('fanci');
var content = require('./content');

exports.handler = geoHandler;

var tramContent = require('../json/cargotram.json');
var tramTemplate = {
    'name': 'properties.Name',
    'zip': 'properties.PLZ',
    'city': 'properties.Ort',
    'website': 'properties.www',
    'coordinates': 'geometry.coordinates'
};
var wasteBinContent = require('../json/abfallgefaess.json');
var wasteBinTemplate = {
    'type': 'properties.Typ',
    'volume': 'properties.Volumen',
    'location': 'properties.Ort',
    'remark': 'properties.Bemerkung',
    'coordinates': 'geometry.coordinates'
};

function geoHandler(type) {
    var geoContent, template;
    if (type === 'tram_stops') {
        geoContent = tramContent;
        template = tramTemplate;
    } else if (type === 'waste_bins') {
        geoContent = wasteBinContent;
        template = wasteBinTemplate;
    }
    var reducedContent = _.map(geoContent.features, function(feature) {
        return Fanci.transform(feature, template);
    });

    return function(request, reply) {
        content.negotiate(request, reply, [
            {
                ext: 'json',
                mimetype: 'application/json',
                response: reducedContent
            },
            {
                ext: 'geojson',
                mimetype: 'application/vnd.geo+json',
                response: geoContent
            }
        ]);
    };
}
