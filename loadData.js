var _ = require('underscore');
var mongoist = require('mongoist');
var csv = require('./lib/csv');
var format = require('./lib/format');


var dbUrl = process.env.MONGOLAB_URI || process.env.MONGO_URI || 'mongodb://localhost/openerz',
    db = mongoist(dbUrl);

db.on('error', function(err) {
    console.log('database error', err);
});

db.on('connect', function () {
    console.log('db connected', dbUrl);
});

var station = db.station;
var calendar = db.calendar;

var csvs = [
    {
        'path': './csv/Entsorgung_Sammelstellen.csv',
        'format': format.stationEntry,
        'delimiter': ',',
        'collection': station,
        'type': 'stations'
    },
    {
        'path': './csv/Entsorgungskalender_Bioabfall_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/Entsorgungskalender_CargoTram_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'cargotram'
    },
    {
        'path': './csv/Entsorgungskalender_eTram_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'etram'
    },
    {
        'path': './csv/Entsorgungskalender_Karton_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/Entsorgungskalender_Papier_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Kehricht_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/Entsorgungskalender_Sonderabfall_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'special'
    },
    {
        'path': './csv/Entsorgungskalender_Textilien_2014.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'textile'
    },
    {
        'path': './csv/Entsorgungskalender_Bioabfall_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/Entsorgungskalender_CargoTram_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'cargotram'
    },
    {
        'path': './csv/Entsorgungskalender_eTram_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'etram'
    },
    {
        'path': './csv/Entsorgungskalender_Karton_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/Entsorgungskalender_Papier_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Kehricht_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/Entsorgungskalender_Sonderabfall_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'special'
    },
    {
        'path': './csv/Entsorgungskalender_Textilien_2015.csv',
        'format': format.calendarEntry,
        'delimiter': ';',
        'collection': calendar,
        'type': 'textile'
    },
    {
        'path': './csv/Entsorgungskalender_Bioabfall_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/Entsorgungskalender_CargoTram_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cargotram'
    },
    {
        'path': './csv/Entsorgungskalender_eTram_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'etram'
    },
    {
        'path': './csv/Entsorgungskalender_Karton_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/Entsorgungskalender_Papier_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Kehricht_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/Entsorgungskalender_Sonderabfall_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'special'
    },
    {
        'path': './csv/Entsorgungskalender_Textilien_2016.csv',
        'format': format.calendarEntry,
        'delimiter': ',',
        'collection': calendar,
        'type': 'textile'
    },
    {
        'path': './csv/Entsorgungskalender_Bioabfall_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/Entsorgungskalender_CargoTram_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cargotram'
    },
    {
        'path': './csv/Entsorgungskalender_eTram_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'etram'
    },
    {
        'path': './csv/Entsorgungskalender_Karton_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/Entsorgungskalender_Papier_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Kehricht_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/Entsorgungskalender_Sonderabfall_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'special'
    },
    {
        'path': './csv/Entsorgungskalender_Textilien_2017.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'textile'
    },
    {
        'path': './csv/Entsorgungskalender_Bioabfall_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/Entsorgungskalender_CargoTram_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cargotram'
    },
    {
        'path': './csv/Entsorgungskalender_eTram_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'etram'
    },
    {
        'path': './csv/Entsorgungskalender_Karton_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/Entsorgungskalender_Papier_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Kehricht_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/Entsorgungskalender_Sonderabfall_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'special'
    },
    {
        'path': './csv/Entsorgungskalender_Textilien_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'textile'
    },
    {
        'path': './csv/thalwil_bioabfall_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/thalwil_karton_2018.csv',
        'format': format.calendarEntryTour,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/thalwil_kehricht_2018.csv',
        'format': format.calendarEntryTour,
        'delimiter': ',',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/thalwil_metall_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'metal'
    },
    {
        'path': './csv/thalwil_papier_2018.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Bioabfall_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/Entsorgungskalender_CargoTram_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cargotram'
    },
    {
        'path': './csv/Entsorgungskalender_eTram_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'etram'
    },
    {
        'path': './csv/Entsorgungskalender_Karton_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/Entsorgungskalender_Papier_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'paper'
    },
    {
        'path': './csv/Entsorgungskalender_Kehricht_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/Entsorgungskalender_Sonderabfall_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'special'
    },
    {
        'path': './csv/Entsorgungskalender_Textilien_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'textile'
    },
    {
        'path': './csv/thalwil_bioabfall_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'organic'
    },
    {
        'path': './csv/thalwil_karton_2019.csv',
        'format': format.calendarEntryTour,
        'delimiter': ',',
        'collection': calendar,
        'type': 'cardboard'
    },
    {
        'path': './csv/thalwil_kehricht_2019.csv',
        'format': format.calendarEntryTour,
        'delimiter': ',',
        'collection': calendar,
        'type': 'waste'
    },
    {
        'path': './csv/thalwil_metall_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'metal'
    },
    {
        'path': './csv/thalwil_papier_2019.csv',
        'format': format.calendarEntryIso,
        'delimiter': ',',
        'collection': calendar,
        'type': 'paper'
    }
];


(async () => {
    // remove previous entries
    await db.station.remove();
    await db.calendar.remove();

    for (const csv of csvs) {
        try {
            await importCsv(csv.path, csv.format, csv.collection, csv.type, csv.delimiter);
        } catch (err) {
            console.log('Import failed:', err);
            process.exit(1);
        }
    }
    console.log("Import finished");
    process.exit(0);
})();

async function importCsv(path, format, collection, type, delimiter) {
    var objArr = await csv.convertToJson(path, format, delimiter);
	console.log('CSV ' + path + ' converted, got ' + objArr.length + ' objects');

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
			    console.log("An error occured", err);
                reject(err);
            }
        });
    });
    await Promise.all(promises);
    console.log("Finished importing this CSV.");
}

