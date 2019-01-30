var Moment = require('moment');
var Fanci = require('fanci');

exports.calendarEntry = calendarEntry;
exports.calendarEntryIso = calendarEntryIso;
exports.calendarEntryTour = calendarEntryTour;
exports.stationEntry = stationEntry;

function calendarEntry(entry) {
    var dateFormat = function(value) {
        if (value) {
            var dateObj = Moment.utc(value, '[XY,] DD. MMM YYYY', 'de');
            return dateObj.startOf('day').toDate();
        }
        return value;
    };
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': [ 'PLZ', parseInt ],
        'station': 'Station'
    };
    return Fanci.transform(entry, template);
}

function calendarEntryIso(entry) {
    var dateFormat = function(value) {
        if (value) {
            var dateObj = Moment.utc(value, 'YYYY-MM-DD');
            return dateObj.startOf('day').toDate();
        }
        return value;
    };
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': [ 'PLZ', parseInt ],
        'station': 'Station'
    };
    return Fanci.transform(entry, template);
}

function calendarEntryTour(entry) {
    var dateFormat = function(value) {
        if (value) {
            var dateObj = Moment.utc(value, 'YYYY-MM-DD');
            return dateObj.startOf('day').toDate();
        }
        return value;
    };
    var lowercase = function(value) {
        if (value) {
            return value.toLowerCase();
        }
    };
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': [ 'PLZ', parseInt ],
        'tour': ['Tour', lowercase]
    };
    return Fanci.transform(entry, template);
}

function stationEntry(entry) {
    var kindFormat = function(value) {
        return (value === 'X');
    };
    var pickupFormat = function(value) {
        if (value === '.') {
            return 'regular';
        }
        return value;
    };
    var template = {
        'zip': 'PLZ',
        'name': 'Sammelstelle',
        'kind': {
            'oil': [ 'Oel', kindFormat ],
            'metal': [ 'Metall', kindFormat ],
            'glass': [ 'Glas', kindFormat ]
        },
        'pickup': [ 'abholdatum', pickupFormat ]
    };
    return Fanci.transform(entry, template);
}
