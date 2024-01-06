#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import re
import logging
from datetime import datetime, date, timedelta
from openerzpy.download import download as dl
from openerzpy.parse import parse_ics
from openerzpy.parse import parse_config
from openerzpy.file import csv_file


__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

# Logging
log = logging.getLogger(__name__)
log.setLevel(logging.DEBUG)

logging.basicConfig(
    format="%(asctime)s %(levelname)-8s %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)
logging.captureWarnings(True)

source = [
    {
        'url': 'https://www.duebendorf.ch/_doc/4777654',
        'area': '1',
    },
    {
        'url': 'https://www.duebendorf.ch/_doc/4777657',
        'area': '2',
    },
    {
        'url': 'https://www.duebendorf.ch/_doc/4777660',
        'area': '3',
    },
    {
        'url': 'https://www.duebendorf.ch/_doc/4777663',
        'area': '4',
    },
    { # Separater Karton-Kalender, da Karton im Kreis 4 oben fehlt
        'url': 'https://www.duebendorf.ch/_doc/4777642',
        'area': '4',
    }
]

waste_type_map = {
    'Kehricht': 'waste',
    'Grüngut': 'organic',
    'Papier': 'paper',
    'Karton': 'cardboard',
    'Sonderabfallmobil': 'special',
    'Häckselaktion': 'chipping_service',
    'Haeckselaktion': 'chipping_service',
}

ignore_entries = [
    'Tour Öki-Bus fällt aus',
    'Tour Oeki Bus faellt aus',
    'Tour Öki-Bus Nachmittag fällt aus',
    'Tour Oeki Bus Nachmittag faellt aus',
    'Hauptsammelstelle geschlossen',
    'Hauptsammelstelle Nachmittag geschlossen',
    'Hauptsammelstelle Vormittag geöffnet',
    'Kompostabgabe',
]


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
    # iCal Download URL
    config_path = os.path.join(__location__, '..', '..', 'config', 'regions', 'duebendorf.yml')
    config = parse_config.load_config(config_path)

    output_rows = []
    for data in source:
        zone = data['area']
        # iCal Download URL
        cal_path = os.path.join(__location__, f'duebendorf_calendar_{zone}.ics')

        print(f"Download URL: {data['url']}")
        dl.download_file(data['url'], cal_path)

        start_date = datetime.fromisoformat(config['start_date'])
        end_date = datetime.fromisoformat(config['end_date'])
        events = parse_ics.parse_file(cal_path, start_date, end_date)
        for event in events:
            if 'summary' not in event or not event['summary']:
                continue

            if event['summary'] in ignore_entries:
                continue

            try:
                out = {
                    'region': 'duebendorf',
                    'area': zone,
                    'zip': '8600',
                    'col_date': event['start_date'].date().isoformat(),
                    'waste_type': waste_type(event['summary']),
                }
                output_rows.append(out)
            except KeyError:
                print(f"ERROR: could not map {event['summary']}", file=sys.stderr)
                raise

    log.info("Start writing duebendorf.csv")
    csv_path = os.path.join(__location__, f'duebendorf.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)

except Exception:
    log.exception("Error in duebendorf.py")
    sys.exit(1)
