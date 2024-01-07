var _ = require('underscore');
var Moment = require('moment');
var Fanci = require('fanci');
var Calendar = require('icalendar');
var config = require('./config');
var trans = require('./translate').trans;

exports.calendarEntry = calendarEntry;
exports.stationEntry = stationEntry;
exports.convertToIcal = convertToIcal;

function dateFormat(value) {
    if (value) {
        var dateObj = Moment(value);
        return dateObj.format('YYYY-MM-DD');
    }
    return value;
}

function lowercase(value) {
    if (value) {
        return value.toLowerCase();
    }
    return '';
}

function integer(value) {
    if (value) {
        return parseInt(value);
    }
    return '';
}

function calendarEntry(docs) {
    return {
        '_metadata': docs['_metadata'],
        'result': _.map(docs.result, function(entry) {
            var template = {
                'date': [ 'col_date', dateFormat ],
                'type': 'waste_type',
                'zip': ['zip', integer],
                'area': ['area', lowercase],
                'station': 'station',
                'region': 'region',
                'description': 'description'
            };
            return Fanci.transform(entry, template);
        })
    };
}

function stationEntry(docs) {
    return {
        '_metadata': docs['_metadata'],
        'result': _.map(docs.result, function(entry) {
            var template = {
                'zip': ['zip', integer],
                'name': 'name',
                'kind': {
                    'oil': 'oil',
                    'metal': 'metal',
                    'glass': 'glass',
                    'textile': 'textile'
                },
                'region': 'region',
                'description': 'description'
            };
            return Fanci.transform(entry, template);
        })
    };
}

function convertToIcal(docs, lang) {
    trans.setLocale(lang);
    var iCal = initializeCalendar();
    var calInfo = config.calendar();
    var vEvent, momDate;
    _.each(docs, function(doc) {
        vEvent = iCal.addComponent('VEVENT');
        if (doc.area) {
            vEvent.setSummary(trans.translate(calInfo[doc.waste_type].name) + ', ' + trans.translate('Area: $[1]', doc.area));
        } else {
            vEvent.setSummary(trans.translate(calInfo[doc.waste_type].name));
        }
        if (doc.station && doc.waste_type.indexOf('tram') >= 0) {
            vEvent.setLocation(trans.translate('Tram stop') + ': ' + doc.station);
        } else if (doc.station) {
            vEvent.setLocation(trans.translate('Station') + ': ' + doc.station);
        } else if (doc.area) {
            vEvent.setLocation(trans.translate('Area: $[1]', doc.area));
        } else {
            vEvent.setLocation(trans.translate('ZIP: $[1]', doc.zip));
        }
        vEvent.setDescription(trans.translate(doc.description));

        momDate = Moment(doc['col_date']);
        vEvent.addProperty('DTSTART', momDate.toDate(), { VALUE: 'DATE' });
        vEvent.addProperty('DTEND', momDate.clone().add(1, 'days').toDate(), { VALUE: 'DATE' });
    });

    return iCal.toString();
}

function initializeCalendar() {
    var iCal = new Calendar.iCalendar(true);
    iCal.addProperty('VERSION', '2.0');
    iCal.addProperty('PRODID', '-//metaodi//openerz//EN');
    iCal.addProperty('NAME', 'OpenERZ');
    iCal.addProperty('X-WR-CALNAME', 'OpenERZ');
    iCal.addProperty('DESCRIPTION', trans.translate('Waste collection calendar'));
    iCal.addProperty('X-WR-CALDESC', trans.translate('Waste collection calendar'));
    iCal.addProperty('TIMEZONE-ID', 'Europe/Zurich');
    iCal.addProperty('TZID', 'Europe/Zurich');
    iCal.addProperty('X-WR-TIMEZONE', 'Europe/Zurich');
    return iCal;
}
