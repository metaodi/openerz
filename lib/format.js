var _ = require('underscore');
var Moment = require('moment-timezone');
var Fanci = require('fanci');

exports.calendarEntry = calendarEntry;
exports.stationEntry = stationEntry;

function calendarEntry(entry) {
    var template = {
        'Abholdatum': 'date',
        'PLZ': 'zip',
        'Station': 'station'
    };
    entry = Fanci.rename(entry, template);

    var dateString = entry['date'];
    if (dateString) {
        var dateObj = Moment(dateString, '[XY,] DD. MMM YYYY', 'de');
        var zurichDate = dateObj.clone().tz('Europe/Zurich');
        entry['date'] = zurichDate.toDate();
    }

    return entry;
}

function stationEntry(entry) {
    var template = {
        'PLZ': 'zip',
        'Sammelstelle': 'name'
    };
    entry = Fanci.rename(entry, template);

    var kind = {
        oil: (entry['Oel'] === 'X'),
        metal: (entry['Metall'] === 'X'),
        glass: (entry['Glas'] === 'X')
    };
    entry['kind'] = kind;
    entry = _.omit(entry, [ 'Oel', 'Metall', 'Glas' ]);

    return entry;
}
