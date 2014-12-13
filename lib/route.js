'use strict';

exports.generateRoutes = generateRoutes;

var _ = require('underscore');
var Hapi = require('hapi');
var Request = require('superagent');
var csv = require('./csv');
var format = require('./format');

function generateRoutes(server) {
    /* Add routes needed for the API docs */
    addApiDocRoutes(server);

    /* Add a route for each CSV */
    addCsvRoutes(server); 

    /* This function adds the export routes used by the ERZ App "Sauberes Zürich" to the API */
    addExportRoutes(server, function(err, msg) {
        if (err) {
            console.log("Adding export routes failed!");
        } else {
            console.log("Adding export routes successful");
        }
    });

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
    server.route({
            method: 'GET',
            path: '/',
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

function addCsvRoutes(server) {
    server.route({
        method: 'GET',
        path: '/api/stations',
        config: {
            description: 'Get stations',
            notes: 'Return all stations of ERZ (Sammelstellen)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgung_Sammelstellen_2014.csv', format.stationEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/organic',
        config: {
            description: 'Calendar of organic waste collection',
            notes: 'Return the current calendar for organic waste (Bioabfall)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_Bioabfall_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/cargotram',
        config: {
            description: 'Calendar of CargoTram',
            notes: 'Return the current calendar of the CargoTram (Sperrmüll)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_CargoTram_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/etram',
        config: {
            description: 'Calendar of eTram',
            notes: 'Return the current calendar of the eTram (electonic waste)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_eTram_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/waste',
        config: {
            description: 'Calendar of waste collection',
            notes: 'Return the current calendar of the waste collection (Kehricht)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_Kehricht_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/cardboard',
        config: {
            description: 'Calendar of cardboard waste collection',
            notes: 'Return the current calendar of the cardboard waste collection (Karton)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_Karton_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/paper',
        config: {
            description: 'Calendar of paper waste collection',
            notes: 'Return current calendar of the paper waste collection (Altpapier)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_Papier_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/special',
        config: {
            description: 'Calendar of special waste collection',
            notes: 'Return current calendar of special waste collection (Sondermüll)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_Sonderabfall_2014.csv', format.calendarEntry)
    });
    server.route({
        method: 'GET',
        path: '/api/textiles',
        config: {
            description: 'Calendar of textile waste collection',
            notes: 'Return current calendar of textile waste collection (Altkleider)',
            tags: ['api'],
            jsonp: 'callback'
        },
        handler: csvJsonHandler('csv/Entsorgungskalender_Textilien_2014.csv', format.calendarEntry)
    });
}

function csvJsonHandler(path, formatFn) {
    var format = formatFn || function(obj) {return obj;};
    return function(request, reply) {
        csv.csvToJson(path, function(obj) {
            reply(_.map(obj, format));
        });
    }
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
                var files = res.body.files;
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
