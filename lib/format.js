var _ = require('underscore');
var Moment = require('moment');
var Fanci = require('fanci');

exports.calendarEntry = calendarEntry;
exports.stationEntry = stationEntry;

function calendarEntry(entry) {
    var template = {
        'Abholdatum': 'collection_date',
        'PLZ': 'zip_code',
        'Station': 'tram_station'
    }
    entry = Fanci.rename(entry, template);

    var dateString = entry['collection_date']; 
    if (dateString) {
        var dateObj = Moment(dateString, '[XY,] DD. MMM YYYY', 'de');
        entry['collection_date'] = dateObj.format();
    }

    return entry;
}

function stationEntry(entry) {
    var template = {
        'PLZ': 'zip_code',
        'Sammelstelle': 'station'
    }
    entry = Fanci.rename(entry, template);

    var kind = {
        oil: (entry['Oel'] === 'X'),
        metal: (entry['Metall'] === 'X'),
        glass: (entry['Glas'] === 'X')
    }
    entry['kind'] = kind;
    entry = _.omit(entry, ['Oel', 'Metall', 'Glas']);

    return entry;
}
