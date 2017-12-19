'use strict';

// Disable the line length as in this file all routes are documented
// jscs:disable maximumLineLength

var _ = require('underscore');
var Joi = require('joi');
var Request = require('superagent');
var calendar = require('./calendar');
var geo = require('./geo');
var csv = require('./csv');
var format = require('./format');
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
            callback(err);
            return;
        }
        console.log("Adding export routes successful");
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
                index: true,
                redirectToSlash: true
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
        path: '/favicon.ico',
        handler: {
            file: 'public/favicon.ico'
        }
    });

    server.route({
        method: 'GET',
        path: '/doc',
        handler: redirectToDocs()
    });
    server.route({
        method: 'GET',
        path: '/api',
        handler: redirectToDocs()
    });

    server.route({
        method: 'GET',
        path: '/export',
        handler: redirectToDocs()
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
        reply().redirect(protocol + '://' + host + '/documentation');
    };
}

function addStationRoutes(server) {
    server.route({
        method: 'GET',
        path: '/api/stations{format?}',
        config: {
            description: 'Get stations',
            notes: 'Return all stations of ERZ (Sammelstellen)',
            tags: [ 'api', 'files' ],
            jsonp: 'callback',
            validate: {
                params: {
                    format: Joi.string().valid('.json').description('The format in which the ressource should be returned, only `json` is supported').default('.json')
                },
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code of the station'),
                    name: Joi.string().description('Case insensitive search for the station name, supports regex'),
                    glass: Joi.boolean().description('Whether the station provides glass container or not'),
                    oil: Joi.boolean().description('Whether the station provides an oil container or not'),
                    metal: Joi.boolean().description('Whether the station provides a metal container or not'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `zip` or `name:desc`. Multiple values can be comma-separated.'),
                    offset: Joi.number().optional().description('Offset from all results, together with `limit` this can be used for pagination.').default(0),
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
            }, _.omit(request.query, [ 'sort', 'limit', 'offset' ]), request.query.sort, request.query.limit, request.query.offset);
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
            handler: calendar.handler(routeEntry.type)
        });
    });
}

function addGeoRoutes(server) {
    _.each(config.geo(), function(routeEntry) {
        server.route({
            method: 'GET',
            path: '/api/' + routeEntry.type + '{format?}',
            config: {
                description: routeEntry.description,
                notes: routeEntry.notes,
                tags: [ 'api', 'files' ],
                jsonp: 'callback',
                validate: {
                    params: {
                        format: Joi.string().valid('.json', '.geojson').description('The format in which the ressource should be returned, either `json` or `geojson`').default('.json')
                    }
                }
            },
            handler: geo.handler(routeEntry.type)
        });
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
            console.log("Got metadata.json, parsing....");
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
