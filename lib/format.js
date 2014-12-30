var _ = require('underscore');
var Moment = require('moment-timezone');
var Fanci = require('fanci');

exports.calendarEntry = calendarEntry;
exports.stationEntry = stationEntry;

function calendarEntry(entry) {
    var dateFormat = function(value) {
        if (value) {
            var dateObj = Moment(value, '[XY,] DD. MMM YYYY', 'de');
            var zurichDate = dateObj.clone().tz('Europe/Zurich');
            return zurichDate.toDate();
        }
        return value;
    };
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': 'PLZ',
        'station': 'Station'
    };
    return Fanci.transform(entry, template);
}

function stationEntry(entry) {
    var kindFormat = function(value) {
        return (value === 'X');
    };
    var template = {
        'zip': 'PLZ',
        'name': 'Sammelstelle',
        'kind': {
            'oil': [ 'Oel', kindFormat ],
            'metal': [ 'Metall', kindFormat ],
            'glass': [ 'Glas', kindFormat ]
        }
    };
    return Fanci.transform(entry, template);
}
