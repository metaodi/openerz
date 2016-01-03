'use strict';

var _ = require('underscore');
var Calendar = require('icalendar');
var Moment = require('moment');
var content = require('./content');
var config = require('./config');
var trans = require('./translate').trans;
var db = require('./db');

exports.handler = calendarHandler;

function calendarHandler(type) {
    return function(request, reply) {
        var params = _.omit(request.query, [ 'sort', 'limit', 'offset', 'lang' ]);
        if (request.query.lang) {
            trans.setLocale(request.query.lang);
        } else {
            trans.setLocale('en');
        }
        if (type) {
            params['type'] = type;
        }
        db.calendar(function(err, docs) {
            if (err) {
                console.log('error', err);
                reply();
            }
            content.negotiate(request, reply, [
                {
                    ext: 'json',
                    mimetype: 'application/json',
                    response: docs
                },
                {
                    ext: 'ics',
                    mimetype: 'text/calendar',
                    response: convertToIcal(docs.result)
                }
            ]);
        }, params, request.query.sort, request.query.limit, request.query.offset);
    };
}

function convertToIcal(docs) {
    var iCal = new Calendar.iCalendar(true);
    iCal.addProperty('VERSION', '2.0');
    iCal.addProperty('PRODID', '-//metaodi//openerz//EN');
    iCal.addProperty('NAME', 'OpenERZ');
    iCal.addProperty('X-WR-CALNAME', 'OpenERZ');
    iCal.addProperty('DESCRIPTION', trans.translate('Waste collection of the City of Zurich (ERZ)'));
    iCal.addProperty('X-WR-CALDESC', trans.translate('Waste collection of the City of Zurich (ERZ)'));
    iCal.addProperty('TIMEZONE-ID', 'Europe/Zurich');
    iCal.addProperty('TZID', 'Europe/Zurich');
    iCal.addProperty('X-WR-TIMEZONE', 'Europe/Zurich');

    var calInfo = config.calendar();
    var vEvent, momDate;
    _.each(docs, function(doc) {
        vEvent = iCal.addComponent('VEVENT');
        vEvent.setSummary(trans.translate(calInfo[doc.type].name) + ', ' + trans.translate('ZIP: $[1]', doc.zip));
        if (doc.station && doc.type.indexOf('tram') >= 0) {
            vEvent.setLocation(trans.translate('Tram stop') + ': ' + doc.station);
        } else if (doc.station) {
            vEvent.setLocation(trans.translate('Station') + ': ' + doc.station);
        } else {
            vEvent.setLocation(trans.translate('ZIP: $[1]', doc.zip));
        }
        vEvent.setDescription(trans.translate(calInfo[doc.type].description));

        momDate = Moment(doc['date']);
        vEvent.addProperty('DTSTART', momDate.toDate(), { VALUE: 'DATE' });
        vEvent.addProperty('DTEND', momDate.clone().add(1, 'days').toDate(), { VALUE: 'DATE' });
    });

    return iCal.toString();
}
