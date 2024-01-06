#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import re
import logging
from datetime import datetime
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

source = {
    '1': {
        'url': 'https://www.uster.ch/_doc/4890898',
    },
    '2': {
        'url': 'https://www.uster.ch/_doc/4890901',
    },
    '3': {
        'url': 'https://www.uster.ch/_doc/4890907',
    },
    '4': {
        'url': 'https://www.uster.ch/_doc/4890910',
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
    # iCal Download URL
    config_path = os.path.join(__location__, '..', '..', 'config', 'regions', 'uster.yml')
    config = parse_config.load_config(config_path)

    output_rows = []
    for zone, data in source.items():
        log.info(f"Download URL: {data['url']}")
        cal_path = os.path.join(__location__, f'uster_calendar_{zone}.ics')
        dl.download_file(data['url'], cal_path)

        start_date = datetime.fromisoformat(config['start_date'])
        end_date = datetime.fromisoformat(config['end_date'])
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
            output_rows.append(out)

    log.info("Start writing uster.csv")
    csv_path = os.path.join(__location__, f'uster.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)

except Exception:
    log.exception("Error in uster.py")
    sys.exit(1)
