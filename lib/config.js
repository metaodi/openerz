'use strict';
// Disable the length checks as in this file all routes are documented
/*eslint max-len: off*/
/*eslint max-lines-per-function: off*/

var Joi = require('joi');

exports.version = versionConfig;
exports.app = appConfig;
exports.parameter = parameterConfig;
exports.calendar = calendarConfig;
exports.region = regionConfig;
exports.types = typesConfig;

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
            port: parseInt(process.env.PORT) || 8080,
            basepath: '/'
        };
    }
    return app;
}

function parameterConfig(inputTypes) {
    var types = undefined;
    if (inputTypes) {
        types = Joi.string().valid(...inputTypes);
    } else {
        var allTypes = typesConfig();
        types = Joi.string().valid(...allTypes);
    }
    return {
        region: Joi.string().valid('zurich', 'thalwil', 'basel', 'stgallen').description('The region of this collection/request'),
        zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection. Some regions (e.g. Basel) do not provide zip codes.'),
        area: Joi.string().lowercase().description('Case insensitive label of the area, used if per zip code more than one waste collection operates, e.g. `a`, `b` and `c`.'),
        station: Joi.string().description('Case insensitive search for name of collection station/tram stop, supports regex'),
        types: Joi.alternatives().try(types, Joi.array().items(types)).description('Types of waste to search for (e.g. `paper`), supports multiple values, just repeat the parameter.'),
        start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
        end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
        sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
        limit: Joi.number().optional().description('Limit the amount of returned records.').default(0),
        offset: Joi.number().optional().description('Offset from all results, together with `limit` this can be used for pagination.').default(0),
        lang: Joi.string().valid('de', 'en').optional().description('Language for the output, should be the two-letter abbreviation (e.g. `de`).')
    };
}

function typesConfig() {
    return [
        'bulky_goods',
        'cardboard',
        'cargotram',
        'chipping_service',
        'etram',
        'incombustibles',
        'metal',
        'organic',
        'paper',
        'special',
        'textile',
        'waste'
    ];
}

function calendarConfig() {
    return {
        all: {
            name: 'All types',
            type: null,
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of all types of waste',
            params: [ 'region', 'zip', 'area', 'station', 'types', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        waste: {
            name: 'General waste collection',
            type: 'waste',
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of the waste collection (Kehricht)',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        cardboard: {
            name: 'Cardboard waste collection',
            type: 'cardboard',
            description: 'Calendar of cardboard waste collection',
            notes: 'Return the current calendar of the cardboard waste collection (Karton)',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        organic: {
            name: 'Organic waste collection',
            type: 'organic',
            description: 'Calendar of organic waste collection',
            notes: 'Return the current calendar of the organic waste collection (Bioabfall)',
            params: [ 'region', 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        paper: {
            name: 'Paper waste collection',
            type: 'paper',
            description: 'Calendar of paper waste collection',
            notes: 'Return the current calendar of the paper waste collection (Altpapier)',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        metal: {
            name: 'Metal waste collection',
            type: 'metal',
            description: 'Calendar of metal waste collection',
            notes: 'Return the current calendar of the metal waste collection (Grobmetall)',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        special: {
            name: 'Special waste collection',
            type: 'special',
            description: 'Calendar of special waste collection',
            notes: 'Return the current calendar of the special waste collection (Sondermüll)',
            params: [ 'region', 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        textile: {
            name: 'Textile waste collection',
            type: 'textile',
            description: 'Calendar of textile waste collection',
            notes: 'Return the current calendar of the textile waste collection (Altkleider)',
            params: [ 'region', 'zip', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        cargotram: {
            name: 'Cargotram',
            type: 'cargotram',
            description: 'Calendar of CargoTram',
            notes: 'Return the current calendar of the CargoTram (Sperrmüll)',
            params: [ 'region', 'zip', 'station', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        etram: {
            name: 'eTram',
            type: 'etram',
            description: 'Calendar of eTram',
            notes: 'Return the current calendar of the eTram (electronic waste)',
            params: [ 'region', 'zip', 'station', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        chipping_service: {
            name: 'Chipping Service',
            type: 'chipping_service',
            description: 'Calendar of chipping service',
            notes: 'Return the current calendar of the chipping service',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        bulky_goods: {
            name: 'Bulky Goods waste collection',
            type: 'bulky_goods',
            description: 'Calendar of bulky goods waste collection',
            notes: 'Return the current calendar of the bulky goods waste collection (Sperrmüll)',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        },
        incombustibles: {
            name: 'Incombustible waste collection',
            type: 'incombustibles',
            description: 'Calendar of incombustible waste collection',
            notes: 'Return the current calendar of the incombustible waste collection (Unbrennbares)',
            params: [ 'region', 'zip', 'area', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        }
    };
}

function regionConfig() {
    return {
        zurich: {
            route: 'zurich',
            omitParams: ['region'],
            types: [
                'cardboard',
                'cargotram',
                'etram',
                'metal',
                'organic',
                'paper',
                'special',
                'textile',
                'waste'
            ]
        },
        thalwil: {
            route: 'thalwil',
            omitParams: ['region', 'zip'],
            types: [
                'cardboard',
                'metal',
                'organic',
                'paper',
                'waste'
            ]
        },
        basel: {
            route: 'basel',
            omitParams: ['region', 'zip'],
            types: [
                'bulky_goods',
                'chipping_service',
                'incombustibles',
                'metal',
                'organic',
                'paper',
                'waste'
            ]
        },
        stgallen: {
            route: 'stgallen',
            omitParams: ['region', 'zip'],
            types: [
                'cardboard',
                'metal',
                'organic',
                'paper',
                'waste'
            ]
        },
    };
}
