#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from icalendar import Calendar, Event
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
def parse_file(path):
    cal = None
    with open(path) as f:
        cal = Calendar.from_ical(f.read())

    # convert to CSV/JSON?
    events = []
    for component in cal.walk(name="VEVENT"):

        # map properties
        event = map_event(component)
        # delete fields that should not be exported as CSV
        del event['extra']
        del event['location']
        del event['description']
        del event['uid']
        events.append(event)

    return events
