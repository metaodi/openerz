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
        'area': 'A',
        'waste_type': 'waste',
    },
    {  # Altstadt A Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=15421519&calhome=1066394',
        'area': 'A',
        'waste_type': 'organic',
    },
    {  # Altstadt A Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=814175&calhome=1066394',
        'area': 'A',
        'waste_type': 'paper',
    },
    {  # Altstadt A Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=814175&calhome=1066394',
        'area': 'A',
        'waste_type': 'cardboard',
    },
    {  # Altstadt B Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=4476922&calhome=1066394',
        'area': 'B',
        'waste_type': 'waste',
    },
    {  # Altstadt B Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=15560605&calhome=1066394',
        'area': 'B',
        'waste_type': 'organic',
    },
    {  # Altstadt B Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=6220599&calhome=1066394',
        'area': 'B',
        'waste_type': 'paper',
    },
    {  # Altstadt B Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=6220599&calhome=1066394',
        'area': 'B',
        'waste_type': 'cardboard',
    },
    {  # Tour 1 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=14399054&calhome=1066394',
        'area': '1',
        'waste_type': 'waste',
    },
    {  # Tour 1 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=805912338&calhome=1066394',
        'area': '1',
        'waste_type': 'organic',
    },
    {  # Tour 1 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=3312163&calhome=1066394',
        'area': '1',
        'waste_type': 'paper',
    },
    {  # Tour 1 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=3312163&calhome=1066394',
        'area': '1',
        'waste_type': 'cardboard',
    },
    {  # Tour 2 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=2113597&calhome=1066394',
        'area': '2',
        'waste_type': 'waste',
    },
    {  # Tour 2 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=97572543&calhome=1066394',
        'area': '2',
        'waste_type': 'organic',
    },
    {  # Tour 2 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=10716582&calhome=1066394',
        'area': '2',
        'waste_type': 'paper',
    },
    {  # Tour 2 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=10716582&calhome=1066394',
        'area': '2',
        'waste_type': 'cardboard',
    },
    {  # Tour 3 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=10750453&calhome=1066394',
        'area': '3',
        'waste_type': 'waste',
    },
    {  # Tour 3 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=906135671&calhome=1066394',
        'area': '3',
        'waste_type': 'organic',
    },
    {  # Tour 3 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=12840502&calhome=1066394',
        'area': '3',
        'waste_type': 'paper',
    },
    {  # Tour 3 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=12840502&calhome=1066394',
        'area': '3',
        'waste_type': 'cardboard',
    },
    {  # Tour 4 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=11993362&calhome=1066394',
        'area': '4',
        'waste_type': 'waste',
    },
    {  # Tour 4 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=716000142&calhome=1066394',
        'area': '4',
        'waste_type': 'organic',
    },
    {  # Tour 4 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=2316284&calhome=1066394',
        'area': '4',
        'waste_type': 'paper',
    },
    {  # Tour 4 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=2316284&calhome=1066394',
        'area': '4',
        'waste_type': 'cardboard',
    },
    {  # Tour 5 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=5680552&calhome=1066394',
        'area': '5',
        'waste_type': 'waste',
    },
    {  # Tour 5 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=344685619&calhome=1066394',
        'area': '5',
        'waste_type': 'organic',
    },
    {  # Tour 5 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=2222137&calhome=1066394',
        'area': '5',
        'waste_type': 'paper',
    },
    {  # Tour 5 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=2222137&calhome=1066394',
        'area': '5',
        'waste_type': 'cardboard',
    },
    {  # Tour 6 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=3041966&calhome=1066394',
        'area': '6',
        'waste_type': 'waste',
    },
    {  # Tour 6 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=116093932&calhome=1066394',
        'area': '6',
        'waste_type': 'organic',
    },
    {  # Tour 6 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=4185530&calhome=1066394',
        'area': '6',
        'waste_type': 'paper',
    },
    {  # Tour 6 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=4185530&calhome=1066394',
        'area': '6',
        'waste_type': 'cardboard',
    },
    {  # Tour 7 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=1067618&calhome=1066394',
        'area': '7',
        'waste_type': 'waste',
    },
    {  # Tour 7 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=680863940&calhome=1066394',
        'area': '7',
        'waste_type': 'organic',
    },
    {  # Tour 7 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=3540254&calhome=1066394',
        'area': '7',
        'waste_type': 'paper',
    },
    {  # Tour 7 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=3540254&calhome=1066394',
        'area': '7',
        'waste_type': 'cardboard',
    },
    {  # Tour 8 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=3406065&calhome=1066394',
        'area': '8',
        'waste_type': 'waste',
    },
    {  # Tour 8 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=1711255966&calhome=1066394',
        'area': '8',
        'waste_type': 'organic',
    },
    {  # Tour 8 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=6349053&calhome=1066394',
        'area': '8',
        'waste_type': 'paper',
    },
    {  # Tour 8 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=6349053&calhome=1066394',
        'area': '8',
        'waste_type': 'cardboard',
    },
    {  # Tour 9 Kehricht
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=5626910&calhome=1066394',
        'area': '9',
        'waste_type': 'waste',
    },
    {  # Tour 9 Grüntour
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=2120564965&calhome=1066394',
        'area': '9',
        'waste_type': 'organic',
    },
    {  # Tour 9 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=16225268&calhome=1066394',
        'area': '9',
        'waste_type': 'paper',
    },
    {  # Tour 9 Papier/Karton
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=16225268&calhome=1066394',
        'area': '9',
        'waste_type': 'cardboard',
    },
    {  # Grobmetall Ganze Stadt
        'url': 'https://m.winterthur.ch/appl/ical.php?apid=14333144&calhome=1066394',
        'area': '',
        'waste_type': 'metal',
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
