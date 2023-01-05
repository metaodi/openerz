#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import traceback
import download as dl
import parse_ics
import csv
import re


__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

header = [
    'region',
    'zip',
    'area',
    'station',
    'waste_type',
    'col_date',
]

waste_type_map = {
    'Kehricht': 'waste',
    'Grüngut': 'organic',
    'Metall': 'metal',
    'Papier': 'paper',
    'Karton': 'cardboard',
    'Sonderabfallmobil': 'special',
    'Grubengut': 'incombustibles',
}

other_categories = [
    'Repair',
    'Herbst-Flohmarkt',
    'Frühlings-Flohmarkt',
    'Büchermarkt',
    'Kinderkleiderbörse',
    'Spielsachenbörse'
]


def waste_type(in_type):
    return waste_type_map[in_type]


try:
    # iCal Download URL
    url = "https://thalwil.entsorglos.swiss/calendar.ics"
    cal_path = os.path.join(__location__, 'calendar.ics')

    print(f"Download URL: {url}")
    dl.download_file(url, cal_path)

    events = parse_ics.parse_file(cal_path)
    csv_path = os.path.join(__location__, 'thalwil.csv')
    with open(csv_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=header, quoting=csv.QUOTE_NONNUMERIC)
        writer.writeheader()
        for event in events:
            m = re.match(r'(?P<art>[\w-]*)( Zone (?P<zone>.))?', event['summary'])
            if m['art'] in other_categories:
                continue
            area = ''
            if m['zone']:
                area = m['zone']
            out = {
                'region': 'thalwil',
                'area': area,
                'zip': '8800',
                'col_date': event['start_date'].date().isoformat(),
                'waste_type': waste_type(m['art']),
            }
            writer.writerow(out)

except Exception as e:
    print("Error: %s" % e)
    print(traceback.format_exc())
    raise
