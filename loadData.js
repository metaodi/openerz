var _ = require('underscore');
var mongojs = require('mongojs');
var csv = require('./lib/csv');
var format = require('./lib/format');
var async = require('async');

var dbUrl = process.env.MONGOLAB_URI || 'mongodb://localhost/openerz',
    coll = ['calendar', 'station']
    db = mongojs(dbUrl, coll),

db.on('error',function(err) {
    console.log('database error', err);
});

db.on('ready', function() {
    console.log('db connected', dbUrl);
    // remove previous entries
    db.station.remove();
    db.calendar.remove();

    async.series([
        function(callback){
            csv.convertToJson('./csv/Entsorgung_Sammelstellen_2014.csv', format.stationEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    db.station.insert(obj);
                });
                console.log("Finished inserting stations!");
                callback(null, "stations");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_Bioabfall_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'organic';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar for organic waste!");
                callback(null, "organic waste");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_CargoTram_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'cargotram';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar of cargo tram!");
                callback(null, "cargo tram");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_eTram_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'etram';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar of e-tram!");
                callback(null, "e-tram");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_Karton_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'cardboard';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar for cardboard waste!");
                callback(null, "cardboard");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_Papier_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'paper';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar for paper waste!");
                callback(null, "paper");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_Kehricht_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'waste';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar for general waste!");
                callback(null, "waste");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_Sonderabfall_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'special';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar for special waste!");
                callback(null, "special");
            });
        },
        function(callback){
            csv.convertToJson('./csv/Entsorgungskalender_Textilien_2014.csv', format.calendarEntry, function (objArr) {
                console.log('CSV converted, got ' + objArr.length + ' objects');

                _.each(objArr, function (obj) {
                    obj['type'] = 'textile';
                    db.calendar.insert(obj);
                });
                console.log("Finished inserting calendar for textile waste!");
                callback(null, "cargo tram");
            });
        },
    ],
    function(err, results){
        if (err) {
            console.log("Error occured:", err);
            process.exit(code=1);
        }
        console.log("Finished importing", results);
        process.exit(code=0);
    });
});

// make sure the database in opened and the 'ready' event is fired
db.open();
