'use strict';

var _ = require('underscore');
var Joi = require('joi');
var calendar = require('./calendar');
var station = require('./station');
var config = require('./config');

exports.plugin = {
    name: 'OpenERZ Routing',
    version: config.version(),
    multiple: false,
    once: true,
    register: async (server, options) => {
        await generateRoutes(server);
    }
};

// eslint-disable-next-line max-lines-per-function, complexity
async function generateRoutes(server) {
    /* Add static routes */
    try {
        addStaticRoutes(server);
    } catch(err) {
        console.error('Error while adding static routes');
        throw err;
    }

    /* Add routes needed for the API docs */
    try {
        addApiDocRoutes(server);
    } catch(err) {
        console.error('Error while adding api docs routes');
        throw err;
    }

    /* Add a route for the collection stations */
    try {
        addStationRoutes(server);
    } catch(err) {
        console.error('Error while adding station routes');
        throw err;
    }

    /* Add routes for the calendars */
    try {
        addCalendarRoutes(server);
    } catch(err) {
        console.error('Error while adding calendar routes');
        throw err;
    }

    /* Add routes for the regions */
    try {
        addRegionRoutes(server);
    } catch(err) {
        console.error('Error while adding region routes');
        throw err;
    }
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

    server.route({
        method: 'GET',
        path: '/favicon.ico',
        handler: {
            file: 'public/favicon.ico'
        }
    });

    /* Status route for monitoring */
    server.route({
        method: 'GET',
        path: '/isalive',
        handler: (request, h) => 'Is up and running!'
    });
}

function addApiDocRoutes(server) {
    /* catch all route to serve api docs */
    var apiDocsRoutes = [
        '/{path*}',
        '/doc',
        '/api',
    ];
    _.each(apiDocsRoutes, function(path) {
        server.route({
            method: 'GET',
            path: path,
            handler: redirectToDocs()
        });
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
    return function(request, h) {
        var protocol = 'http';

        var host = request.headers.host;
        if ('openerz.metaodi.ch' === host) {
            protocol = 'https';
        } 
        return h.redirect(protocol + '://' + host + '/documentation');
    };
}

function addStationRoutes(server) {
    server.route({
        method: 'GET',
        path: '/api/stations{format?}',
        config: {
            description: 'Get stations',
            notes: 'Return all stations of ERZ (Sammelstellen)',
            tags: [ 'api', 'station' ],
            jsonp: 'callback',
            validate: {
                /* eslint-disable max-len */
                params: Joi.object({
                    format: Joi.string().allow('', '.json').description('The format in which the ressource should be returned, only `json` is supported').default('.json')
                }),
                query: Joi.object({
                    region: Joi.string().valid('zurich', 'thalwil', 'basel', 'stgallen').description('The region of the station'),
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code of the station'),
                    name: Joi.string().description('Case insensitive search for the station name, supports regex'),
                    glass: Joi.boolean().description('Whether the station provides glass container or not'),
                    oil: Joi.boolean().description('Whether the station provides an oil container or not'),
                    metal: Joi.boolean().description('Whether the station provides a metal container or not'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `zip` or `name:desc`. Multiple values can be comma-separated.'),
                    offset: Joi.number().optional().description('Offset from all results, together with `limit` this can be used for pagination.').default(0),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                })
                /* eslint-enable max-len */
            }
        },
        handler: station.handler()
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
                tags: [ 'api', 'calendar' ],
                jsonp: 'callback',
                validate: {
                    /* eslint-disable max-len */
                    params: Joi.object({
                        format: Joi.string().allow('', '.ics', '.json').description('The format of the returned ressource, either `json` or `ics`').default('.json')
                    }),
                    query: Joi.object(_.pick(params, routeEntry.params))
                    /* eslint-enable max-len */
                }
            },
            handler: calendar.handler(routeEntry.type)
        });
    });
}

function addRegionRoutes(server) {
    _.each(config.region(), function(regionEntry) {
        var params = _.omit(config.parameter(regionEntry['types']), regionEntry['omitParams']);
        _.each(config.calendar(), function(routeEntry) {
            server.route({
                /* eslint-disable max-len */
                method: 'GET',
                path: '/api/region/' + regionEntry.route + '/calendar' + (routeEntry.type ? '/' + routeEntry.type : '') + '{format?}',
                config: {
                    description: routeEntry.description,
                    notes: routeEntry.notes,
                    tags: [ 'api', 'region-' + regionEntry.route ],
                    jsonp: 'callback',
                    validate: {
                        params: Joi.object({
                            format: Joi.string().allow('', '.ics', '.json').description('The format of the returned ressource, either `json` or `ics`').default('.json')
                        }),
                        query: Joi.object(_.pick(params, routeEntry.params))
                    }
                },
                handler: calendar.handler(routeEntry.type, regionEntry.route)
                /* eslint-enable max-len */
            });
        });
    });
}
