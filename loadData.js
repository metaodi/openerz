var _ = require('underscore');
var mongojs = require('mongojs');
var csv = require('./lib/csv');
var format = require('./lib/format');
var async = require('async');

var dbUrl = process.env.MONGOLAB_URI || 'mongodb://localhost/openerz',
    coll = [ 'calendar', 'station' ],
    db = mongojs(dbUrl, coll);

db.on('error', function(err) {
    console.log('database error', err);
});

db.on('ready', function() {
    console.log('db connected', dbUrl);
    // remove previous entries
    db.station.remove();
    db.calendar.remove();

    // initialize bulk update
    var stationBulk = db.station.initializeOrderedBulkOp();
    var calendarBulk = db.calendar.initializeOrderedBulkOp();

    var importCsv = function(path, format, collection, type, delimiter, callback) {
        csv.convertToJson(path, format, delimiter, function(objArr) {
            console.log('CSV converted, got ' + objArr.length + ' objects');

            _.each(objArr, function(obj) {
                if (type !== 'stations') {
                    obj['type'] = type;
                }
                collection.insert(obj);
            });
            console.log("Finished inserting", type);
            callback();
        });
    };

    var csvs = [
        {
            'path': './csv/Entsorgung_Sammelstellen.csv',
            'format': format.stationEntry,
            'delimiter': ',',
            'collection': stationBulk,
            'type': 'stations'
        },
        {
            'path': './csv/Entsorgungskalender_Bioabfall_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'organic'
        },
        {
            'path': './csv/Entsorgungskalender_CargoTram_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'cargotram'
        },
        {
            'path': './csv/Entsorgungskalender_eTram_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'etram'
        },
        {
            'path': './csv/Entsorgungskalender_Karton_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'cardboard'
        },
        {
            'path': './csv/Entsorgungskalender_Papier_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'paper'
        },
        {
            'path': './csv/Entsorgungskalender_Kehricht_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'waste'
        },
        {
            'path': './csv/Entsorgungskalender_Sonderabfall_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'special'
        },
        {
            'path': './csv/Entsorgungskalender_Textilien_2014.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'textile'
        },
        {
            'path': './csv/Entsorgungskalender_Bioabfall_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'organic'
        },
        {
            'path': './csv/Entsorgungskalender_CargoTram_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'cargotram'
        },
        {
            'path': './csv/Entsorgungskalender_eTram_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'etram'
        },
        {
            'path': './csv/Entsorgungskalender_Karton_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'cardboard'
        },
        {
            'path': './csv/Entsorgungskalender_Papier_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'paper'
        },
        {
            'path': './csv/Entsorgungskalender_Kehricht_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'waste'
        },
        {
            'path': './csv/Entsorgungskalender_Sonderabfall_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'special'
        },
        {
            'path': './csv/Entsorgungskalender_Textilien_2015.csv',
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendarBulk,
            'type': 'textile'
        },
        {
            'path': './csv/Entsorgungskalender_Bioabfall_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'organic'
        },
        {
            'path': './csv/Entsorgungskalender_CargoTram_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'cargotram'
        },
        {
            'path': './csv/Entsorgungskalender_eTram_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'etram'
        },
        {
            'path': './csv/Entsorgungskalender_Karton_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'cardboard'
        },
        {
            'path': './csv/Entsorgungskalender_Papier_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'paper'
        },
        {
            'path': './csv/Entsorgungskalender_Kehricht_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'waste'
        },
        {
            'path': './csv/Entsorgungskalender_Sonderabfall_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'special'
        },
        {
            'path': './csv/Entsorgungskalender_Textilien_2016.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'textile'
        },
        {
            'path': './csv/Entsorgungskalender_Bioabfall_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'organic'
        },
        {
            'path': './csv/Entsorgungskalender_CargoTram_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'cargotram'
        },
        {
            'path': './csv/Entsorgungskalender_eTram_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'etram'
        },
        {
            'path': './csv/Entsorgungskalender_Karton_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'cardboard'
        },
        {
            'path': './csv/Entsorgungskalender_Papier_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'paper'
        },
        {
            'path': './csv/Entsorgungskalender_Kehricht_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'waste'
        },
        {
            'path': './csv/Entsorgungskalender_Sonderabfall_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'special'
        },
        {
            'path': './csv/Entsorgungskalender_Textilien_2017.csv',
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendarBulk,
            'type': 'textile'
        }
    ];

    async.eachSeries(
        csvs,
        function(csv, callback) {
            try {
                importCsv(csv.path, csv.format, csv.collection, csv.type, csv.delimiter, callback);
            } catch (e) {
                callback(e);
            }
        },
        function(err) {
            if (err) {
                console.log('Import failed:', err);
                process.exit(1);
            }
            async.series([
                function(callback) {
                    console.log("Executing bulk update for stations...");
                    stationBulk.execute(function(err, res) {
                        console.log("Done.");
                        callback(err, res);
                    });
                },
                function(callback) {
                    console.log("Executing bulk update for calendar...");
                    calendarBulk.execute(function(err, res) {
                        console.log("Done.");
                        callback(err, res);
                    });
                },
            ],
            function(err, results) {
                if (err) {
                    console.log('Import failed:', err);
                    process.exit(1);
                }
                console.log("Import finished");
                process.exit(0);
            });
        }
    );
});

// make sure the database in opened and the 'ready' event is fired
db.open();
