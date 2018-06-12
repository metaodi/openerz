'use strict';
//
// Disable the line length as in this file all routes are documented
// jscs:disable maximumLineLength

var Joi = require('joi');

exports.version = versionConfig;
exports.app = appConfig;
exports.parameter = parameterConfig;
exports.calendar = calendarConfig;
exports.geo = geoConfig;

var version;
function versionConfig() {
    if (version) {
        return version;
    } else {
        version = require('../package.json').version;
        return version;
    }
}

function appConfig() {
    var app;
    if (process.env.NODE_ENV === 'test') {
        app = {
            port: 3002,
            basepath: '/'
        };
    } else {
        app = {
            port: process.env.PORT || 8080,
            basepath: '/'
        };
    }
    return app;
}

function parameterConfig() {
    var types = [
        'cardboard',
        'cargotram',
        'etram',
        'organic',
        'paper',
        'special',
        'textile',
        'waste',
        'metal'
   ];
    return {
        zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
        tour: Joi.string().lowercase().description('Case insensitive label of the tour, used if per zip code more than one waste collection tour operates, e.g. `a`, `b` and `c`.'),
        station: Joi.string().description('Case insensitive search for name of collection station/tram stop, supports regex'),
        types: Joi.alternatives(Joi.string().valid(types), Joi.array().items(Joi.string().valid(types))).description('Types of waste to search for (e.g. `paper`), supports multiple values, just repeat the parameter.'),
        start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
        end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
        sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
        limit: Joi.number().optional().description('Limit the amount of returned records.').default(0),
        offset: Joi.number().optional().description('Offset from all results, together with `limit` this can be used for pagination.').default(0),
        lang: Joi.string().valid('de', 'en').optional().description('Language for the output, should be the two-letter abbreviation (e.g. `de`).')
    };
}

function calendarConfig() {
    return {
        all: {
            name: 'All types',
            type: null,
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of all types of waste',
            params: [ 'zip', 'tour', 'station', 'types', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        waste: {
            name: 'General waste collection',
            type: 'waste',
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of the waste collection (Kehricht)',
            params: [ 'zip', 'tour', 'start', 'end', 'sort', 'offset', 'limit', 'tour', 'lang' ]
        },
        cardboard: {
            name: 'Cardboard waste collection',
            type: 'cardboard',
            description: 'Calendar of cardboard waste collection',
            notes: 'Return the current calendar of the cardboard waste collection (Karton)',
            params: [ 'zip', 'tour', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        organic: {
            name: 'Organic waste collection',
            type: 'organic',
            description: 'Calendar of organic waste collection',
            notes: 'Return the current calendar of the organic waste collection (Bioabfall)',
            params: [ 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        paper: {
            name: 'Paper waste collection',
            type: 'paper',
            description: 'Calendar of paper waste collection',
            notes: 'Return the current calendar of the paper waste collection (Altpapier)',
            params: [ 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        metal: {
            name: 'Metal waste collection',
            type: 'metal',
            description: 'Calendar of metal waste collection',
            notes: 'Return the current calendar of the metal waste collection (Grobmetall)',
            params: [ 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        special: {
            name: 'Special waste collection',
            type: 'special',
            description: 'Calendar of special waste collection',
            notes: 'Return the current calendar of the special waste collection (Sondermüll)',
            params: [ 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        textile: {
            name: 'Textile waste collection',
            type: 'textile',
            description: 'Calendar of textile waste collection',
            notes: 'Return the current calendar of the textile waste collection (Altkleider)',
            params: [ 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        cargotram: {
            name: 'Cargotram',
            type: 'cargotram',
            description: 'Calendar of CargoTram',
            notes: 'Return the current calendar of the CargoTram (Sperrmüll)',
            params: [ 'zip', 'station', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        etram: {
            name: 'eTram',
            type: 'etram',
            description: 'Calendar of eTram',
            notes: 'Return the current calendar of the eTram (electronic waste)',
            params: [ 'zip', 'station', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        }
    };
}

function geoConfig() {
    return {
        tramstops: {
            name: 'Tram Stops',
            type: 'tramstops',
            description: 'Get all tram stops for the Cargo- and E-Tram',
            notes: 'Returns all Cargo and E-Tram stops. If the client requests it (`Accept` header or `format` parameter, e.g. `.geojson` ), GeoJSON will be returned, JSON instead.',
        },
        wastebins: {
            name: 'Waste Bins',
            type: 'wastebins',
            description: 'Get all public waste bins (incl. Robidog)',
            notes: 'Returns all public waste bins. If the client requests it (`Accept` header or `format` parameter, e.g. `.geojson` ), GeoJSON will be returned, JSON instead.',
        }
    };
}
