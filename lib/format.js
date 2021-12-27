var Moment = require('moment');
var Fanci = require('fanci');

exports.calendarEntry = calendarEntry;
exports.calendarEntryIso = calendarEntryIso;
exports.calendarEntryArea = calendarEntryArea;
exports.baselEntry = baselEntry;
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

function calendarEntryArea(entry) {
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
        return '';
    };
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': [ 'PLZ', parseInt ],
        'area': ['Tour', lowercase]
    };
    return Fanci.transform(entry, template);
}

function baselEntry(entry) {
    var dateFormat = function(value) {
        if (value) {
            var dateObj = Moment.utc(value, 'YYYY-MM-DD');
            return dateObj.startOf('day').toDate();
        }
        return value;
    };
    var artFormat = function(value) {
        artMap = {
            'Kehrichtabfuhr': 'waste',
            'Grünabfuhr': 'organic',
            'Metallabfuhr': 'metal',
            'Papierabfuhr': 'paper',
            'Grobsperrgut': 'bulky_goods',
            'Häckseldienst': 'chipping_service',
            'Unbrennbares': 'incombustibles'
        }
        if (value && artMap[value]) {
            return artMap[value]
        }
        return null;
    };
    var template = {
        'date': ['termin', dateFormat ],
        'type': ['art', artFormat ],
        'area': 'zone'
    };
    var mappedEntry = Fanci.transform(entry, template);
    mappedEntry['zip'] = 4000;
    return mappedEntry;
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
