#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import traceback
import csv
import re
from datetime import datetime, date, timedelta
from openerzpy.download import download as dl
from openerzpy.parse import parse_ics


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

source = {
    '1': {
        'url': 'https://www.duebendorf.ch/_doc/4178203',
    },
    '2': {
        'url': 'https://www.duebendorf.ch/_doc/4178200',
    },
    '3': {
        'url': 'https://www.duebendorf.ch/_doc/4178197',
    },
    '4': {
        'url': 'https://www.duebendorf.ch/_doc/4178194',
    },
}

waste_type_map = {
    'Kehricht': 'waste',
    'Grüngut': 'organic',
    'Papier': 'paper',
    'Karton': 'cardboard',
    'Sonderabfallmobil': 'special',
    'Hackselaktion': 'chipping_service'
}


def waste_type(in_type):
    in_type = in_type.replace('"', '')
    try:
        return waste_type_map[in_type]
    except KeyError:
        # try to match the first word
        m = re.match(r'(?P<first>[\w]*)(?P<rest>.*)?', in_type)
        if not m:
            raise
        return waste_type_map[m['first']]


try:
    csv_path = os.path.join(__location__, f'duebendorf.csv')
    with open(csv_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=header, quoting=csv.QUOTE_NONNUMERIC)
        writer.writeheader()

        for zone, config in source.items():
            # iCal Download URL
            cal_path = os.path.join(__location__, f'duebendorf_calendar_{zone}.ics')

            print(f"Download URL: {config['url']}")
            dl.download_file(config['url'], cal_path)

            start_date = (2023, 1, 1)
            end_date = (2023, 12, 31)
            events = parse_ics.parse_file(cal_path, start_date, end_date)
            for event in events:
                from pprint import pprint
                pprint(event)
                if 'summary' not in event or not event['summary']:
                    continue

                try:
                    out = {
                        'region': 'duebendorf',
                        'area': zone,
                        'zip': '8600',
                        'col_date': event['start_date'].date().isoformat(),
                        'waste_type': waste_type(event.get('summary', '')),
                    }
                except KeyError:
                    print(f"ERROR: could not map {event.get('summary')}, skipping...", file=sys.stderr)
                    continue
                writer.writerow(out)

except Exception as e:
    print("Error: %s" % e, file=sys.stderr)
    print(traceback.format_exc(), file=sys.stderr)
    raise
