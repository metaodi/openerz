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
    if (type === 'tramstops') {
        geoContent = tramContent;
        template = tramTemplate;
    } else if (type === 'wastebins') {
        geoContent = wasteBinContent;
        template = wasteBinTemplate;
    }
    var reducedContent = _.map(geoContent.features, function(feature) {
        return Fanci.transform(feature, template);
    });

    return function(request, h) {
        return content.negotiate(request, h, [
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
