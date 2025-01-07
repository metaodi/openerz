#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import re
import logging
import time
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
    {  # Altstadt A Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=4763999&calhome=1066394',
        'area': 'a',
        'waste_type': 'waste',
    },
    {  # Altstadt A Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=15421519&calhome=1066394',
        'area': 'a',
        'waste_type': 'organic',
    },
    {  # Altstadt A Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=814175&calhome=1066394',
        'area': 'a',
        'waste_type': 'paper',
    },
    {  # Altstadt A Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=814175&calhome=1066394',
        'area': 'a',
        'waste_type': 'cardboard',
    },
]

ignore_entries = []

try:
    # iCal Download URL
    config_path = os.path.join(__location__, '..', '..', 'config', 'regions', 'winterthur.yml')
    config = parse_config.load_config(config_path)

    output_rows = []
    for data in source:
        zone = data['area']
        wt_config = data['waste_type']
        # iCal Download URL
        cal_path = os.path.join(__location__, f'winterthur_calendar_{zone}_{wt_config}.ics')

        print(f"Download URL: {data['url']}")
        dl.download_file(data['url'], cal_path)

        start_date = datetime.fromisoformat(config['start_date'])
        end_date = datetime.fromisoformat(config['end_date'])
        events = parse_ics.parse_file(cal_path, start_date, end_date)
        for event in events:
            log.debug(event)
            if 'summary' not in event or not event['summary']:
                continue

            if event['summary'] in ignore_entries:
                continue

            try:
                out = {
                    'region': 'winterthur',
                    'area': zone,
                    'zip': '8400',
                    'col_date': event['start_date'].date().isoformat(),
                    'waste_type': wt_config,
                    'description': '',
                }
                output_rows.append(out)
            except KeyError:
                print(f"ERROR: could not map {event['summary']}", file=sys.stderr)
                raise
        time.sleep(20)

    log.info("Start writing winterthur.csv")
    csv_path = os.path.join(__location__, 'winterthur.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)

except Exception:
    log.exception("Error in winterthur.py")
    sys.exit(1)
