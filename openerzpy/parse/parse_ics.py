#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from icalendar import Calendar, Event
import recurring_ical_events
import datetime
import sys

def convert_dates(v):
    if isinstance(v.dt, datetime.date):
        return datetime.datetime.combine(v.dt, datetime.time(0, 0))
    return v.dt


def str_strip(v):
    return str(v).strip()


def map_event(comp):
    properties = {v[0]: v[1] for v in comp.property_items()}
    del properties['BEGIN']
    del properties['END']

    template = {
        'DTSTART': {
            'prop': 'start_date',
            'fn': convert_dates,
        },
        'DTEND': {
            'prop': 'end_date',
            'fn': convert_dates,
        },
        'DTSTAMP': {
            'prop': 'created_date',
            'fn': convert_dates,
        },
        'SUMMARY': { 
            'prop': 'summary',
            'fn': str_strip,
        },
        'LOCATION': { 
            'prop': 'location',
            'fn': str_strip,
        },
        'DESCRIPTION': { 
            'prop': 'description',
            'fn': str_strip,
        },
        'UID': {
            'prop': 'uid',
            'fn': str_strip,
        },
    }
    event = {'extra': {}, 'location': None, 'description': None}
    for k, v in properties.items():
        if k in template:
            t = template[k]
            event[t['prop']] = t['fn'](v)
        else:
            event['extra'][k] = str(v)
    return event


# parse the ICS file
def parse_file(path, start_date=None, end_date=None):
    cal = None
    with open(path) as f:
        cal = Calendar.from_ical(f.read())

    # convert to CSV/JSON?
    events = []
    for component in _event_generator(cal, start_date, end_date):

        # map properties
        event = map_event(component)
        # delete fields that should not be exported as CSV
        del event['extra']
        del event['location']
        del event['description']
        del event['uid']
        events.append(event)

    return events


def _event_generator(cal, start_date, end_date):
    if start_date and end_date:
        events = recurring_ical_events.of(cal).between(start_date, end_date)
        for event in events:
            yield event
    else:
        for component in cal.walk(name="VEVENT"):
            yield component

