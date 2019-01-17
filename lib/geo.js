var _ = require('underscore');
var Fanci = require('fanci');
var content = require('./content');

exports.handler = geoHandler;

var tramContent = require('../json/cargotram.json');
var tramTemplate = {
    'name': 'properties.name',
    'zip': 'properties.plz',
    'city': 'properties.ort',
    'website': 'properties.www',
    'coordinates': 'geometry.coordinates'
};
var wasteBinContent = require('../json/abfallgefaess.json');
var wasteBinTemplate = {
    'type': 'properties.gefaesstyp_txt',
    'volume': 'properties.dimension_txt',
    'location': 'properties.ort',
    'remark': 'properties.bemerkung',
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
