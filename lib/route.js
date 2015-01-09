'use strict';

// Disable the line length as in this file all routes are documented
// jscs:disable maximumLineLength

var _ = require('underscore');
var Hapi = require('hapi');
var Joi = require('joi');
var Boom = require('boom');
var Fanci = require('fanci');
var Request = require('superagent');
var Accepts = require('accepts');
var Moment = require('moment');
var Calendar = require('icalendar');
var csv = require('./csv');
var format = require('./format');
var trans = require('./translate').trans;
var db = require('./db');
var config = require('./config');

exports.register = function(server, options, next) {
    generateRoutes(server, next);
};

exports.register.attributes = {
    name: 'OpenERZ Routing',
    version: config.version()
};

function generateRoutes(server, callback) {
    /* Add static routes */
    addStaticRoutes(server);

    /* Add routes needed for the API docs */
    addApiDocRoutes(server);

    /* Add a route for the collection stations */
    addStationRoutes(server);

    /* Add routes for the calendars */
    addCalendarRoutes(server);

    /* Add routes for GeoJSONs */
    addGeoRoutes(server);

    /* This function adds the export routes used by the ERZ App "Sauberes Zürich" to the API */
    addExportRoutes(server, function(err, msg) {
        if (err) {
            console.log("Adding export routes failed!");
        } else {
            console.log("Adding export routes successful");
        }
        callback();
    });
}

function addStaticRoutes(server) {
    /* Server everything in the 'public' directory at /static/ */
    server.route({
        method: 'GET',
        path: '/static/{param*}',
        handler: {
            directory: {
                path: 'public',
                listing: true
            }
        }
    });

    /* Status route for monitoring */
    server.route({
        method: 'GET',
        path: '/isalive',
        handler: function(request, reply) {
            reply('Is up and running!');
        }
    });
}

function addApiDocRoutes(server) {
    /* catch all route to serve api docs */
    server.route({
            method: 'GET',
            path: '/{path*}',
            handler: redirectToDocs()
    });

    server.route({
        method: 'GET',
        path: '/doc',
        handler: {
            file: 'public/apidoc.html'
        }
    });

    server.route({
        method: 'GET',
        path: '/favicon.ico',
        handler: {
            file: 'public/favicon.ico'
        }
    });

    server.route({
        method: 'GET',
        path: '/api',
        handler: {
            file: 'public/apidoc.html'
        }
    });

    server.route({
        method: 'GET',
        path: '/export',
        handler: {
            file: 'public/apidoc.html'
        }
    });

    server.route({
        method: 'GET',
        path: '/apis.json',
        handler: {
            file: 'public/apis.json'
        }
    });
}

function redirectToDocs() {
    return function(request, reply) {
        var protocol = 'http';
        var host = request.headers.host;
        reply().redirect(protocol + '://' + host + '/doc');
    };
}

function addStationRoutes(server) {
    server.route({
        method: 'GET',
        path: '/api/stations',
        config: {
            description: 'Get stations',
            notes: 'Return all stations of ERZ (Sammelstellen)',
            tags: [ 'api', 'files' ],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code of the station'),
                    name: Joi.string().description('Case insensitive search for the station name, supports regex'),
                    glass: Joi.boolean().description('Whether the station provides glass container or not'),
                    oil: Joi.boolean().description('Whether the station provides an oil container or not'),
                    metal: Joi.boolean().description('Whether the station provides a metal container or not'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `zip` or `name:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            db.station(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, _.omit(request.query, [ 'sort', 'limit' ]), request.query.sort, request.query.limit);
        }
    });
}

function addCalendarRoutes(server) {
    var params = config.parameter();
    _.each(config.calendar(), function(routeEntry) {
        server.route({
            method: 'GET',
            path: '/api/calendar' + (routeEntry.type ? '/' + routeEntry.type : '') + '{format?}',
            config: {
                description: routeEntry.description,
                notes: routeEntry.notes,
                tags: [ 'api', 'files' ],
                jsonp: 'callback',
                validate: {
                    params: {
                        format: Joi.string().valid('.ics', '.json').description('The format in which the ressource should be returned, either `json` or `ics`').default('.json')
                    },
                    query: _.pick(params, routeEntry.params)
                }
            },
            handler: calendarHandler(routeEntry.type)
        });
    });
}

function calendarHandler(type) {
    return function(request, reply) {
        var params = _.omit(request.query, [ 'sort', 'limit', 'lang' ]);
        if (request.query.lang) {
            trans.setLocale(request.query.lang);
        }
        if (type) {
            params['type'] = type;
        }
        db.calendar(function(err, docs) {
            if (err) {
                console.log('error', err);
                reply();
            }
            contentNegotiation(request, reply, docs);
        }, params, request.query.sort, request.query.limit);
    }
}

function contentNegotiation(request, reply, docs) {
    var validFormats;
    var format;
    var errorMsg;

    if (request.params.format) {
        // format in the URL /api/tramstop.json
        format = request.params.format.trim().slice(1);
        validFormats = ['json', 'ics'];
        errorMsg = 'Client must either use json or ics as format';
    } else {
        // format in Accept header
        var accept = Accepts(request.raw.req);
        validFormats = ['application/json', 'text/calendar'];
        format = accept.types(validFormats);
        errorMsg = 'Client must either accept application/json or text/calendar';
    }

    var icsContentType = 'text/calendar';
    switch (format) {
        case validFormats[0]:
            reply(docs);
            break;
        case validFormats[1]:
            reply(convertToIcal(docs)).header('Content-Type', icsContentType);
            break;
        default:
            reply(Boom.notAcceptable(errorMsg));
    }
}

function convertToIcal(docs) {
    var iCal = new Calendar.iCalendar(true);
    iCal.addProperty('VERSION', '2.0');
    iCal.addProperty('PRODID', '-//metaodi//openerz//EN');
    var vEvent, momDate, wasteType, summary;
    _.each(docs, function(doc) {
        vEvent = iCal.addComponent('VEVENT');

        wasteType = trans.translate(doc.type);
        summary = wasteType.charAt(0).toUpperCase() + wasteType.slice(1) + ', ' + trans.translate('ZIP: $[1]', doc.zip);
        if (doc.station) {
            summary += ' (' + trans.translate('Station') + ': ' + doc.station + ')';
        }
        vEvent.setSummary(summary);

        momDate = Moment(doc.date);
        vEvent.addProperty('DTSTART', momDate.toDate(), {VALUE: 'DATE'})
        vEvent.addProperty('DTEND', momDate.clone().add(1, 'days').toDate(), {VALUE: 'DATE'})
    });

    return iCal.toString();
}

function addGeoRoutes(server) {
    var content = require('../json/cargotram.json');
    var template = {
        'name': 'feature.properties.Name',
        'zip': 'feature.properties.PLZ',
        'city': 'feature.properties.Ort',
        'website': 'feature.properties.www',
        'coordinates': 'feature.geometry.coordinates'
    }
    var reducedContent = _.map(content.features, function(feature) {
        return Fanci.transform(feature, template);
    });

    server.route({
        method: 'GET',
        path: '/api/tram_stops{format?}',
        config: {
            description: 'Get all tram stops for the Cargo- and E-Tram',
            notes: 'Returns all Cargo and E-Tram stops. If the client requests it (`Accept` header or `format` parameter, e.g. `.geojson` ), GeoJSON will be returned, JSON instead.',
            tags: [ 'api', 'files' ],
            jsonp: 'callback',
            validate: {
                params: {
                    format: Joi.string().valid('.json', '.geojson').description('The format in which the ressource should be returned, either `json` or `geojson`').default('.json')
                }
            }
        },
        handler: function(request, reply) {
            var validFormats;
            var format;
            var errorMsg;

            if (request.params.format) {
                // format in the URL /api/tramstop.json
                format = request.params.format.trim().slice(1);
                validFormats = ['json', 'geojson'];
                errorMsg = 'Client must either use json or geojson as format';
            } else {
                // format in Accept header
                var accept = Accepts(request.raw.req);
                validFormats = ['application/json', 'application/vnd.geo+json'];
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
        }
    });
}

function addExportRoutes(server, callback) {
    var url = "http://erz.w-4.ch/export/metadata.json";
    Request
        .get(url)
        .end(function(err, res) {
            if (err || !res.ok || !res.body) {
                console.log('Error occured', err);
                callback('Could not fetch ' + url);
                return;
            }
            var files = res.body.files || [];
            files.push('metadata');
            _.each(files, function(file) {
                console.log("Create route for " + file);
                server.route({
                    method: 'GET',
                    path: '/export/' + file,
                    config: {
                        description: 'Get file ' + file,
                        notes: "This data is currently used by the ERZ App",
                        tags: [ 'api', 'export' ],
                        jsonp: 'callback'
                    },
                    handler: {
                        proxy: {
                            timeout: 30000,
                            uri: "http://erz.w-4.ch/export/" + file + ".json"
                        }
                    }
                });
            });
            callback(null, true);
        }
    );
}
