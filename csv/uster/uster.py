#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import re
import logging
from datetime import datetime
from openerzpy import download as dl
from openerzpy import parse_ics
from openerzpy import csv_file
from openerzpy import cache
from openerzpy import parse_config


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
        'url': 'https://www.uster.ch/_rtr/publikation_595463',
    },
    '2': {
        'url': 'https://www.uster.ch/_rtr/publikation_595469',
    },
    '3': {
        'url': 'https://www.uster.ch/_rtr/publikation_595475',
    },
    '4': {
        'url': 'https://www.uster.ch/_doc/6422570',
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
    'Häcksel': 'chipping_service',
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
    csv_path = os.path.join(__location__, f'uster.csv')

    # check if the cache is available, if so skip all steps and use cached file instead
    cache_config = config.get("cache")
    if cache_config and cache_config.get("calendar"):
        log.info(f"Load CSV uster.csv from {cache_config['calendar']}...")
        cache.copy_file_from_cache(cache_config["calendar"], csv_path) 
        sys.exit(0)

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
                'description': '',
            }
            output_rows.append(out)

    log.info("Start writing uster.csv")
    csv_file.write_calendar_to_csv(csv_path, output_rows)

except Exception:
    log.exception("Error in uster.py")
    sys.exit(1)
