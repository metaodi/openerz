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
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_bioabfall.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_cargotram.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_etram.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_karton.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_papier.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_kehricht.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_sonderabfall.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/zurich/zurich_textilien.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'region': 'zurich',
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil/thalwil_bioabfall.csv'),
            'format': format.calendarEntryArea,
            'delimiter': ',',
            'collection': calendar,
            'region': 'thalwil',
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil/thalwil_karton.csv'),
            'format': format.calendarEntryArea,
            'delimiter': ',',
            'collection': calendar,
            'region': 'thalwil',
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil/thalwil_kehricht.csv'),
            'format': format.calendarEntryArea,
            'delimiter': ',',
            'collection': calendar,
            'region': 'thalwil',
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil/thalwil_metall.csv'),
            'format': format.calendarEntryArea,
            'delimiter': ',',
            'collection': calendar,
            'region': 'thalwil',
            'type': 'metal'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil/thalwil_papier.csv'),
            'format': format.calendarEntryArea,
            'delimiter': ',',
            'collection': calendar,
            'region': 'thalwil',
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/basel/basel.csv'),
            'format': format.baselEntry,
            'delimiter': ',',
            'collection': calendar,
            'region': 'basel',
            'type': ''
        }
    ];


    return new Promise(async (resolve, reject) => {
        for (const csv of csvs) {
            try {
                await importCsv(csv.path, csv.format, csv.collection, csv.type, csv.delimiter, csv.region);
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
        'path': path.join(__dirname, '..', 'csv/zurich/entsorgung_sammelstellen.csv'),
        'format': format.stationEntry,
        'delimiter': ',',
        'collection': station,
        'type': 'stations'
    };
    await importCsv(csv.path, csv.format, csv.collection, csv.type, csv.delimiter, 'zurich');
    return station;
}


async function importCsv(path, format, collection, type, delimiter, region) {
    var objArr = await csv.convertToJson(path, format, delimiter);

    const promises = objArr.map(async (obj) => {
        var coll = collection;
        var recType = type;
        return new Promise(async (resolve, reject) => {
            if (recType && recType !== 'stations') {
                obj['type'] = recType;
            }
            if (!obj['type']) {
                resolve();
                return;
            }
            obj['region'] = region;
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

