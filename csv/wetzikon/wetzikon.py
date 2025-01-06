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
    {  # Abfall Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=6570551&calhome=7215088',
        'area': '1',
        'waste_type': 'waste',
    },
    {  # Biogene Abfälle Kreis 1 
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=1343615&calhome=7215088',
        'area': '1',
        'waste_type': 'organic',
    },
    {  # Karton Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=3337955&calhome=7215088',
        'area': '1',
        'waste_type': 'cardboard',
    },
    {  # Häckseldienst Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=13387214&calhome=7215088',
        'area': '1',
        'waste_type': 'chipping_service',
    },
    {  # Grubengut Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=1993665&calhome=7215088',
        'area': '1',
        'waste_type': 'incombustibles',
    },
    {  # Metall Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=2292131&calhome=7215088',
        'area': '1',
        'waste_type': 'metal',
    },
     {  # Papier Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=7772360&calhome=7215088',
        'area': '1',
        'waste_type': 'paper',
    },
     {  # Sonderabfall Kreis 1
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=13299769&calhome=7215088',
        'area': '1',
        'waste_type': 'special',
    },
    {  # Abfall Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=11066413&calhome=7215088',
        'area': '2',
        'waste_type': 'waste',
    },
    {  # Biogene Abfälle Kreis 2 
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=1343615&calhome=7215088',
        'area': '2',
        'waste_type': 'organic',
    },
    {  # Karton Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=3337955&calhome=7215088',
        'area': '2',
        'waste_type': 'cardboard',
    },
    {  # Häckseldienst Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=13387214&calhome=7215088',
        'area': '2',
        'waste_type': 'chipping_service',
    },
    {  # Grubengut Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=1993665&calhome=7215088',
        'area': '2',
        'waste_type': 'incombustibles',
    },
    {  # Metall Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=2292131&calhome=7215088',
        'area': '2',
        'waste_type': 'metal',
    },
     {  # Papier Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=7772360&calhome=7215088',
        'area': '2',
        'waste_type': 'paper',
    },
     {  # Sonderabfall Kreis 2
        'url': 'https://m.wetzikon.ch/appl/ical.php?apid=13299769&calhome=7215088',
        'area': '2',
        'waste_type': 'special',
    },
]

ignore_entries = []

try:
    # iCal Download URL
    config_path = os.path.join(__location__, '..', '..', 'config', 'regions', 'wetzikon.yml')
    config = parse_config.load_config(config_path)

    output_rows = []
    for data in source:
        zone = data['area']
        wt_config = data['waste_type']
        # iCal Download URL
        cal_path = os.path.join(__location__, f'wetzikon_calendar_{zone}_{wt_config}.ics')

        print(f"Download URL: {data['url']}")
        dl.download_file(data['url'], cal_path)

        start_date = datetime.fromisoformat(config['start_date'])
        end_date = datetime.fromisoformat(config['end_date'])
        events = parse_ics.parse_file(cal_path, start_date, end_date)
        for event in events:
            print(event)
            if 'summary' not in event or not event['summary']:
                continue

            if event['summary'] in ignore_entries:
                continue

            try:
                out = {
                    'region': 'wetzikon',
                    'area': zone,
                    'zip': '8620',
                    'col_date': event['start_date'].date().isoformat(),
                    'waste_type': wt_config,
                    'description': '',
                }
                output_rows.append(out)
            except KeyError:
                print(f"ERROR: could not map {event['summary']}", file=sys.stderr)
                raise

    log.info("Start writing wetzikon.csv")
    csv_path = os.path.join(__location__, 'wetzikon.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)

except Exception:
    log.exception("Error in wetzikon.py")
    sys.exit(1)
