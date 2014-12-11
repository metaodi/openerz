'use strict';

exports.generateRoutes = generateRoutes;

var Hapi = require('hapi');
var csv = require('./csv');
var Moment = require('moment');
var _ = require('underscore');

function generateRoutes(server) {
    /* Add routes needed for the API docs */
    addApiDocRoutes(server);
    /* Add a route for each CSV */
    addCsvRoutes(server); 


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
        handler: csvJsonHandler('csv/Entsorgung_Sammelstellen_2014.csv', formatStationEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_Bioabfall_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_CargoTram_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_eTram_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_Kehricht_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_Karton_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_Papier_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_Sonderabfall_2014.csv', formatCalendarEntry)
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
        handler: csvJsonHandler('csv/Entsorgungskalender_Textilien_2014.csv', formatCalendarEntry)
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

function formatCalendarEntry(entry) {
    var dateString = entry['Abholdatum']; 
    console.log(entry);
    if (dateString) {
        var dateObj = Moment(dateString, '[XY,] DD. MMM YYYY', 'de');
        entry['collection_date'] = dateObj.format();
    }
    delete entry['Abholdatum']

    entry['zip_code'] = entry['PLZ'];
    delete entry['PLZ'];

    if (entry['Station']) {
        entry['tram_station'] = entry['Station'];
        delete entry['Station'];
    }

    return entry;
}

function formatStationEntry(entry) {
    entry['zip_code'] = entry['PLZ'];
    delete entry['PLZ'];

    entry['station'] = entry['Sammelstelle'];
    delete entry['Sammelstelle'];

    var kind = {
        oil: (entry['Oel'] === 'X'),
        metal: (entry['Metall'] === 'X'),
        glas: (entry['Glas'] === 'X')
    }
    entry['kind'] = kind;
    delete entry['Oel'];
    delete entry['Metall'];
    delete entry['Glas'];

    return entry;
}

}
