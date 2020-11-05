/* eslint-disable no-async-promise-executor */
var csv = require('./csv');
var format = require('./format');
var TAFFY = require('taffy');
var path = require('path');

exports.loadCalendarData = loadCalendarData;
exports.loadStationData = loadStationData;

async function loadCalendarData() {
    var calendar = TAFFY();
    var csvs = [
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2014.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2015.csv'),
            'format': format.calendarEntry,
            'delimiter': ';',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2016.csv'),
            'format': format.calendarEntry,
            'delimiter': ',',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2017.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2018.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_bioabfall_2018.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_karton_2018.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_kehricht_2018.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_metall_2018.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'metal'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_papier_2018.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2019.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_bioabfall_2019.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_karton_2019.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_kehricht_2019.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_metall_2019.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'metal'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_papier_2019.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Bioabfall_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_CargoTram_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cargotram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_eTram_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'etram'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Karton_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Papier_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'paper'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Kehricht_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Sonderabfall_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'special'
        },
        {
            'path': path.join(__dirname, '..', 'csv/Entsorgungskalender_Textilien_2020.csv'),
            'format': format.calendarEntryIso,
            'delimiter': ',',
            'collection': calendar,
            'type': 'textile'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_bioabfall_2020.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'organic'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_karton_2020.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'cardboard'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_kehricht_2020.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'waste'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_metall_2020.csv'),
            'format': format.calendarEntryTour,
            'delimiter': ',',
            'collection': calendar,
            'type': 'metal'
        },
        {
            'path': path.join(__dirname, '..', 'csv/thalwil_papier_2020.csv'),
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
        'path': path.join(__dirname, '..', 'csv/Entsorgung_Sammelstellen.csv'),
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

