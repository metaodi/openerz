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
        'url': 'https://www.uster.ch/_doc/4890898',
        'waste_weekday': 1,  # Tuesday
        'organic_weekday': 4, # Friday
    },
    '2': {
        'url': 'https://www.uster.ch/_doc/4890901',
        'waste_weekday': 3,  # Thursday
        'organic_weekday': 0, # Monday
    },
    '3': {
        'url': 'https://www.uster.ch/_doc/4890907',
        'waste_weekday': 0,  # Monday
        'organic_weekday': 2, # Wednesday
    },
    '4': {
        'url': 'https://www.uster.ch/_doc/4890910',
        'waste_weekday': 2,  # Wednesday
        'organic_weekday': 3, # Thursday
    },
}

waste_type_map = {
    'Kleidersammlung': 'textile',
    'Textilsammlung': 'textile',
    'Kehricht': 'waste',
    'Grüngut': 'organic',
    'Metallsammlung': 'metal',
    'Papiersammlung': 'paper',
    'Kartonsammlung': 'cardboard',
    'Karton': 'cardboard',
    'Sonderabfallsammlung': 'special',
    'Sonderabfall': 'special',
}

skip_dates = [
    '2024-01-01', # Neujahr
    '2024-01-02', # Berchtoldstag
    '2024-03-29', # Karfreitag
    '2024-04-01', # Ostermontag
    '2024-05-01', # 1. Mai
    '2024-05-09', # Auffahrt
    '2024-05-20', # Pfingstmontag
    '2024-08-01', # 1. August
    '2024-12-25', # Weihnachten
    '2024-12-26', # Stephanstag
    '2025-01-01', # Neujahr
    '2025-01-02', # Berchtoldstag
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


try:
    csv_path = os.path.join(__location__, f'uster.csv')
    with open(csv_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=header, quoting=csv.QUOTE_NONNUMERIC)
        writer.writeheader()

        for zone, config in source.items():
            # iCal Download URL
            cal_path = os.path.join(__location__, f'uster_calendar_{zone}.ics')

            print(f"Download URL: {config['url']}")
            dl.download_file(config['url'], cal_path)

            start_date = (2024, 1, 1)
            end_date = (2024, 12, 31)
            events = parse_ics.parse_file(cal_path, start_date, end_date)
            for event in events:
                if 'summary' not in event or not event['summary']:
                    continue
                out = {
                    'region': 'uster',
                    'area': zone,
                    'zip': '8610',
                    'col_date': event['start_date'].date().isoformat(),
                    'waste_type': waste_type(event.get('summary', '')),
                }
                writer.writerow(out)

            # start_date = date(2024, 1, 1)
            # total_days = 366
            # for day in range(total_days):
            #     current_date = (start_date + timedelta(days=day))
            #     if current_date.isoformat() in skip_dates:
            #         print(f"Skipping date {current_date.isoformat()}...")
            #         continue
            #     if current_date.weekday() == config['waste_weekday']:
            #         w_type = 'waste'
            #     elif current_date.weekday() == config['organic_weekday']:
            #         w_type = 'organic'
            #     else:
            #         continue
            #     out = {
            #         'region': 'uster',
            #         'area': zone,
            #         'zip': '8610',
            #         'col_date': current_date.isoformat(),
            #         'waste_type': w_type,
            #     }
            #     writer.writerow(out)


except Exception as e:
    print("Error: %s" % e)
    print(traceback.format_exc())
    raise
