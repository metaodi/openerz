#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import traceback
import csv
import re
from openerzpy.download import download as dl
from openerzpy.parse import parse_ics


__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)


municipalities = {
    'adliswil': {
        'zip': '8134',
    },
    'horgen': {
        'zip': '8810',
    },
    # 'kilchberg': {
    #     'zip': '8802',
    # },
    'langnau': {
        'zip': '8135',
    },
    'richterswil': {
        'zip': '8942',
    },
    'rueschlikon': {
        'zip': '8803',
    },
    'waedenswil': {
        'zip': '8820',
    },
    'oberrieden': {
        'zip': '8942',
    },
    'thalwil': {
        'zip': '8800',
    },
}

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
    'Häckseldienst': 'chipping_service',
}

other_categories = [
    'Repair',
    'Repair Café',
    'Repair-Café',
    'Herbst-Flohmarkt',
    'Frühlings-Flohmarkt',
    'Büchermarkt',
    'Kinderkleiderbörse Frühling/Sommer',
    'Kinderkleiderbörse Herbst/Winter',
    'Spielsachenbörse',
    'Velobörse',
    'Velorbörse',
    'Bring- und Holtag',
    'Wertstoffsammelstelle',
    'Abfälle Räbenchilbi',
    'Christbäume',
]


def waste_type(in_type):
    try:
        return waste_type_map[in_type]
    except KeyError:
        # try to match the first word
        m = re.match(r'(?P<first>[\w]*)(?P<rest>.*)?', in_type)
        if not m:
            raise
        return waste_type_map[m['first']]



def generate_muni_csv(muni, config):
    # iCal Download URL
    url = f"https://{muni}.entsorglos.swiss/calendar.ics"
    cal_path = os.path.join(__location__, f'{muni}_calendar.ics')

    print(f"Download URL: {url}")
    dl.download_file(url, cal_path)

    events = parse_ics.parse_file(cal_path)
    csv_path = os.path.join(__location__, f'{muni}.csv')
    with open(csv_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=header, quoting=csv.QUOTE_NONNUMERIC)
        writer.writeheader()
        for event in events:
            from pprint import pprint
            pprint(event)
            m = re.match(r'(?P<art>.*?)( (Zone|Tour) (?P<zone>.*))?$', event['summary'])
            if m['art'] in other_categories:
                continue
            area = ''
            if m['zone']:
                area = m['zone']
            out = {
                'region': muni,
                'area': area,
                'zip': config['zip'],
                'col_date': event['start_date'].date().isoformat(),
                'waste_type': waste_type(m['art']),
            }
            writer.writerow(out)

try:
    for muni, config in municipalities.items():
        generate_muni_csv(muni, config)
except Exception as e:
    print("Error: %s" % e)
    print(traceback.format_exc())
    raise
