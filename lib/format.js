var Moment = require('moment');
var Fanci = require('fanci');

exports.calendarEntryIso = calendarEntryIso;
exports.calendarEntryArea = calendarEntryArea;
exports.baselEntry = baselEntry;
exports.stationEntry = stationEntry;

function dateFormat(value) {
    if (value) {
        var dateObj = Moment.utc(value, 'YYYY-MM-DD');
        return dateObj.startOf('day').toDate();
    }
    return value;
}

function lowercase(value) {
    if (value) {
        return value.toLowerCase();
    }
    return '';
}

function calendarEntryIso(entry) {
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': [ 'PLZ', parseInt ],
        'area': 'PLZ',
        'station': 'Station'
    };
    return Fanci.transform(entry, template);
}

function calendarEntryArea(entry) {
    var template = {
        'date': [ 'Abholdatum', dateFormat ],
        'zip': [ 'PLZ', parseInt ],
        'area': ['Tour', lowercase]
    };
    return Fanci.transform(entry, template);
}

function baselEntry(entry) {
    var artFormat = function(value) {
        var artMap = {
            'Kehrichtabfuhr': 'waste',
            'Grünabfuhr': 'organic',
            'Metallabfuhr': 'metal',
            'Papierabfuhr': 'paper',
            'Grobsperrgut': 'bulky_goods',
            'Häckseldienst': 'chipping_service',
            'Unbrennbares': 'incombustibles'
        };
        if (value && artMap[value]) {
            return artMap[value];
        }
        return null;
    };
    var template = {
        'date': [ 'termin', dateFormat ],
        'type': [ 'art', artFormat ],
        'area': [ 'zone', lowercase ]
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
