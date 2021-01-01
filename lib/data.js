/* eslint-disable no-async-promise-executor */
'use strict';

var csv = require('./csv');
var format = require('./format');
var TAFFY = require('taffy');
var path = require('path');

exports.loadCalendarData = loadCalendarData;
exports.loadStationData = loadStationData;

// eslint-disable-next-line max-lines-per-function
async function loadCalendarData() {
    var calendar = TAFFY();
    var csvs = [
        {
            'path': path.join(__dirname, '..', 'csv/zurich_bioabfall.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_cargotram.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_etram.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_karton.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_papier.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_kehricht.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_sonderabfall.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich_textilien.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_bioabfall.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_karton.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_kehricht.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_metall.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'metal'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_papier.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        }
    ];


    return new Promise(async (resolve, reject) => {
        for (const csv of csvs) {
            try {
                await importCsv(csv.path, csv.format, csv.collection, csv.type, csv.delimiter);
            } catch (err) {
                reject(err);
            }
        }
        resolve(calendar);
    });
}
async function loadStationData() {
    var station = TAFFY();
    var csv = {
        'path': path.join(__dirname, '..', 'csv/entsorgung_sammelstellen.csv'),
        'format': format.stationEntry,
        'delimiter': ',',
        'collection': station,
        'type': 'stations'
    };
    await importCsv(csv.path, csv.format, csv.collection, csv.type, csv.delimiter);
    return station;
}


async function importCsv(path, format, collection, type, delimiter) {
    var objArr = await csv.convertToJson(path, format, delimiter);

    const promises = objArr.map(async (obj) => {
        var coll = collection;
        var recType = type;
        return new Promise(async (resolve, reject) => {
            if (recType !== 'stations') {
                obj['type'] = recType;
            }
            try {
                await coll.insert(obj);
                resolve();
            } catch (err) {
                reject(err);
            }
        });
    });
    await Promise.all(promises);
}

