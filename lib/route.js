'use strict';

exports.generateRoutes = generateRoutes;

var _ = require('underscore');
var Hapi = require('hapi');
var Joi = require('joi');
var Request = require('superagent');
var csv = require('./csv');
var format = require('./format');
var db = require('./db');

function generateRoutes(server) {
    /* Add static routes */
    addStaticRoutes(server);

    /* Add routes needed for the API docs */
    addApiDocRoutes(server);

    /* Add a route for the collection stations */
    addStationRoutes(server);

    /* Add routes for the calendars */
    addCalendarRoutes(server); 

    /* This function adds the export routes used by the ERZ App "Sauberes Zürich" to the API */
    addExportRoutes(server, function(err, msg) {
        if (err) {
            console.log("Adding export routes failed!");
        } else {
            console.log("Adding export routes successful");
        }
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
        path: '/doc{s?}',
        handler: {
            file: 'public/apidoc.html'
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
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code of the station'),
                    name: Joi.string().description('Case insensitive search for the station name, supports regex'),
                    glass: Joi.boolean().description('Whether the station provides glass container or not'),
                    oil: Joi.boolean().description('Whether the station provides an oil container or not'),
                    metal: Joi.boolean().description('Whether the station provides a metal container or not'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `zip` or `name:desc`. Multiple values can be comma-separated.')
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
            }, _.omit(request.query, ['sort']), request.query.sort);
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
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    tram_stop: Joi.string().description('Case insensitive search for name of tram stop, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
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
            }, _.omit(request.query, ['sort']), request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/cargotram',
        config: {
            description: 'Calendar of CargoTram',
            notes: 'Return the current calendar of the CargoTram (Sperrmüll)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    tram_stop: Joi.string().description('Case insensitive search for name of tram stop, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'cargotram';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/etram',
        config: {
            description: 'Calendar of eTram',
            notes: 'Return the current calendar of the eTram (electonic waste)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    tram_stop: Joi.string().description('Case insensitive search for name of tram stop, supports regex'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'etram';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/waste',
        config: {
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of the waste collection (Kehricht)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'waste';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/cardboard',
        config: {
            description: 'Calendar of cardboard waste collection',
            notes: 'Return the current calendar of the cardboard waste collection (Karton)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'cardboard';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/paper',
        config: {
            description: 'Calendar of paper waste collection',
            notes: 'Return current calendar of the paper waste collection (Altpapier)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'paper';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/special',
        config: {
            description: 'Calendar of special waste collection',
            notes: 'Return current calendar of special waste collection (Sondermüll)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'special';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
        }
    });
    server.route({
        method: 'GET',
        path: '/api/calendar/textiles',
        config: {
            description: 'Calendar of textile waste collection',
            notes: 'Return current calendar of textile waste collection (Altkleider)',
            tags: ['api'],
            jsonp: 'callback',
            validate: {
                query: {
                    zip: Joi.number().integer().min(1000).max(9999).description('The zip code for the collection'),
                    start: Joi.date().description('Start of date range, only entries from that date forward will be returned, e.g `2014-11-01`'),
                    end: Joi.date().description('End of date range, only entries up to this date will be returned, e.g. `2015-01-25`'),
                    sort: Joi.string().optional().description('Sort order for result, e.g. `date` or `zip:desc`. Multiple values can be comma-separated.')
                }
            }
        },
        handler: function(request, reply) {
            var params = _.omit(request.query, ['sort']);
            params['type'] = 'textile';
            db.calendar(function(err, docs) {
                if (err) {
                    console.log('error', err);
                    reply();
                }
                reply(docs);
            }, params, request.query.sort);
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
                console.log(files);
                _.each(files, function(file) {
                    console.log("Create route for " + file);
                    server.route({
                        method: 'GET',
                        path: '/export/' + file,
                        config: {
                            description: 'Get file ' + file,
                            notes: "This data is currently used by the ERZ App",
                            tags: ['api'],
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
