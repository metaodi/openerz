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
    let geoContent, template;
    if (type === 'tramstops') {
        geoContent = tramContent;
        template = tramTemplate;
    } else if (type === 'wastebins') {
        geoContent = wasteBinContent;
        template = wasteBinTemplate;
    }
    return function(request, h) {
        let limit = request.query.limit;
        let offset = request.query.offset;

        const resultJson = getJsonResult(geoContent, template, offset, limit);
        const resultGeo = getGeoResult(geoContent, offset, limit);

        return content.negotiate(request, h, [
            {
                ext: 'json',
                mimetype: 'application/json',
                response: resultJson
            },
            {
                ext: 'geojson',
                mimetype: 'application/vnd.geo+json',
                response: resultGeo
            }
        ]);
    };
}

function getJsonResult(content, template, offset, limit) {
    const reducedContent = _.map(content.features, function(feature) {
        return Fanci.transform(feature, template);
    });
    const resultObj = {
        '_metadata': {
            'total_count': reducedContent.length
        },
        'result': subsetArray(reducedContent, offset, limit)
    };
    return resultObj;
}

function getGeoResult(content, offset, limit) {
    const result = _.clone(content);
    result.features = subsetArray(result.features, offset, limit);
    return result;
}

function subsetArray(arr, offset, limit) {
    if (limit < 0) {
        return [];
    }

    let startIndex = offset;
    if (offset < 0) {
        //negative => start from end
        startIndex = arr.length + offset;
    }
    if (0 === limit) {
        // limit = 0 => no limit
        limit = arr.length;
    }
    let endIndex = startIndex + limit;

    return arr.slice(startIndex, endIndex);
}
