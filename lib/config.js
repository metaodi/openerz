'use strict';
// Disable the length checks as in this file all routes are documented
/*eslint max-len: off*/
/*eslint max-lines-per-function: off*/

var Joi = require('joi');
var Yaml = require('js-yaml');
var _ = require('underscore');
var fs = require('fs');
var path = require('path');

exports.version = versionConfig;
exports.app = appConfig;
exports.parameter = parameterConfig;
exports.calendar = calendarConfig;
exports.region = regionConfig;
exports.types = typesConfig;
exports.wastetypes = wasteTypesConfig;

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
    var regions = _.keys(regionConfig()).sort();
    return {
        region: Joi.string().valid(...regions).description('The region of this collection/request'),
        zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection. Some regions (e.g. Basel) do not provide zip codes.'),
        area: Joi.string().lowercase().description('Case insensitive label of the area, used if per zip code more than one waste collection operates, e.g. `a`, `b` and `c`.'),
        station: Joi.string().description('Case insensitive search for name of collection station/tram stop, supports regex'),
        types: Joi.array().items(types).single().description('Types of waste to search for (e.g. `paper`), supports multiple values, just repeat the parameter.'),
        start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
        end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
        sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.').default('date'),
        limit: Joi.number().optional().description('Limit the amount of returned records.').default(500),
        offset: Joi.number().optional().description('Offset from all results, together with `limit` this can be used for pagination.').default(0),
        lang: Joi.string().valid('de', 'en').optional().description('Language for the output, should be the two-letter abbreviation (e.g. `de`).')
    };
}

var wasteTypes;
function wasteTypesConfig() {
    if (wasteTypes) {
        return wasteTypes;
    } else {
        var wasteTypesPath = path.join(__dirname, '..', 'config', 'waste_types.yml');
        wasteTypes = Yaml.load(fs.readFileSync(wasteTypesPath, 'utf8'));
        return wasteTypes;
    }
}

var allTypes;
function typesConfig() {
    if (allTypes) {
        return allTypes;
    } else {
        var wasteTypes = wasteTypesConfig();
        allTypes = _.keys(wasteTypes).sort();
        return allTypes;
    }
}

var calendars;
function calendarConfig() {
    if (calendars) {
        return calendars;
    } 
    calendars = { 
        all: {
            name: 'All types',
            type: null,
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of all types of waste',
            params: [ 'region', 'zip', 'area', 'station', 'types', 'start', 'end', 'sort', 'offset', 'limit', 'lang' ]
        }
    };
    return calendars;
}

var regionConf;
function regionConfig() {
    if (regionConf) {
        return regionConf;
    } 
    const dirContents = fs.readdirSync(
        path.join('config', 'regions'),
        {
            withFileTypes: true,
        }
    );

    const onlyYmlFiles = dirContents.filter(file => {
        return path.extname(file.name) === '.yml';
    });

    var regionYml = {};
    for (const regionFile of onlyYmlFiles) {
        var configPath = path.join('config', 'regions', regionFile.name);
        var region = path.basename(configPath, '.yml');
        regionYml[region] = Yaml.load(fs.readFileSync(configPath, 'utf8'));
    }
    regionConf = _.mapObject(regionYml, (value, key) => {
        return {
            route: value.region,
            omitParams: ['region', 'zip'],
            types: _.keys(value.collections).sort()
        };

    });
    return regionConf;
}
