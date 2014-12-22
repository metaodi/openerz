'use strict';

var _ = require('underscore');
var Hapi = require('hapi');
var Joi = require('joi');
var Boom = require('boom');
var Request = require('superagent');
var Accepts = require('accepts');
var csv = require('./csv');
var format = require('./format');
var db = require('./db');
var config = require('./config');

exports.register = function (server, options, next) {
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
            tags: ['api', 'files'],
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
            }, _.omit(request.query, ['sort', 'limit']), request.query.sort, request.query.limit);
        }
    });
}

function addCalendarRoutes(server) {
    server.route({
        method: 'GET',
        path: '/api/calendar',
        config: {
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of all types of waste',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    station: Joi.string().description('Case insensitive search for name of collection station/tram stop, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, _.omit(request.query, ['sort', 'limit']), request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/cargotram',
        config: {
            description: 'Calendar of CargoTram',
            notes: 'Return the current calendar of the CargoTram (Sperrmüll)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    station: Joi.string().description('Case insensitive search for name of tram stop, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'cargotram';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/etram',
        config: {
            description: 'Calendar of eTram',
            notes: 'Return the current calendar of the eTram (electonic waste)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    station: Joi.string().description('Case insensitive search for name of tram stop, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'etram';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/waste',
        config: {
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of the waste collection (Kehricht)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'waste';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/cardboard',
        config: {
            description: 'Calendar of cardboard waste collection',
            notes: 'Return the current calendar of the cardboard waste collection (Karton)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'cardboard';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/paper',
        config: {
            description: 'Calendar of paper waste collection',
            notes: 'Return current calendar of the paper waste collection (Altpapier)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'paper';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/special',
        config: {
            description: 'Calendar of special waste collection',
            notes: 'Return current calendar of special waste collection (Sondermüll)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    station: Joi.string().description('Case insensitive search for name of collection station, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'special';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/textile',
        config: {
            description: 'Calendar of textile waste collection',
            notes: 'Return current calendar of textile waste collection (Altkleider)',
            tags: ['api', 'files'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.'),
                    limit: Joi.number().optional().description('Limit the amount of returned records.').default(0)
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort', 'limit']);
            params['type'] = 'textile';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort, request.query.limit);
        }
    });
}

function addGeoRoutes(server) {
    var content = require('../json/cargotram.json');
    var reducedContent = _.map(content.features, function(singleFeature) {
        var feature = _.clone(singleFeature);
        feature['name'] = feature.properties.Name
        feature['zip'] = feature.properties.PLZ;
        feature['city'] = feature.properties.Ort;
        feature['website'] = feature.properties.www
        feature['coordinates'] = feature.geometry.coordinates;

        delete(feature['type']);
        delete(feature['geometry']);
        delete(feature['properties']);
        return feature;
    });

    server.route({
        method: 'GET',
        path: '/api/tram_stops',
        config: {
            description: 'Get all tram stops for the Cargo- and E-Tram',
            notes: 'Returns all Cargo and E-Tram stops. If the client supports it (`Accept` header), GeoJSON will be returned.',
            tags: ['api', 'files'],
            jsonp: 'callback'
        },
        handler: function (request, reply) {
            var accept = Accepts(request.raw.req);
            var jsonContentType = 'application/json';
            var geoJsonContentType = 'application/vnd.geo+json';        
            switch (accept.types(jsonContentType, geoJsonContentType)) {
                case geoJsonContentType:
                    reply(content).header('Content-Type', geoJsonContentType);
                    break;
                case jsonContentType:
                    reply(reducedContent);
                    break;
                default:
                    reply(Boom.notAcceptable('Client must either accept application/json or application/vnd.geo+json'));
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
            } else {
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
                            tags: ['api', 'export'],
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
            }
            callback(null, true);
        }
    );
}
