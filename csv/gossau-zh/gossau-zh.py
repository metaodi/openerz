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

calendar_url = "https://www.gossau-zh.ch/evt-kategorie/entsorgungskalender/"

waste_type_map = {
    'Kehricht': 'waste',
    'Grüngut': 'organic',
    'Güngut': 'organic',
    'Papier': 'paper',
    'Karton': 'cardboard',
    'Sonderabfall': 'special',
    'Häckseldienst': 'chipping_service',
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
    config_path = os.path.join(__location__, '..', '..', 'config', 'regions', 'gossau-zh.yml')
    config = parse_config.load_config(config_path)
    csv_path = os.path.join(__location__, f'gossau-zh.csv')

    # check if the cache is available, if so skip all steps and use cached file instead
    cache_config = config.get("cache")
    if cache_config and cache_config.get("calendar") and config.get("status") == "done":
        log.info(f"Load CSV gossau-zh.csv from {cache_config['calendar']}...")
        cache.copy_file_from_cache(cache_config["calendar"], csv_path) 
        sys.exit(0)

    output_rows = []

    log.info(f"Download URL: {calendar_url}")
    cal_path = os.path.join(__location__, f'gossau-zh_calendar.ics')
    dl.download_file(calendar_url, cal_path)

    start_date = datetime.fromisoformat(config['start_date'])
    end_date = datetime.fromisoformat(config['end_date'])
    events = parse_ics.parse_file(cal_path, start_date, end_date)
    for event in events:
        print(event)
        if 'summary' not in event or not event['summary']:
            continue
        current_waste_type = waste_type(event.get('summary', ''))
        summary = event.get('summary', '')
        area = ""
        description = ""
        if "Aussenwachten" in summary:
            area = 'Aussenwachten'
            description = "Bertschikon, Unter Ottikon, Herschmettlen, Aussenwachten"
        elif "Gossau-Dorf" in summary:
            area = "Dorf"
            description = "Gossau-Dorf, Grüt, Ober-Ottikon, Hellberg"
            

        out = {
            'region': 'gossau-zh',
            'area': area,
            'zip': '8625',
            'col_date': event['start_date'].date().isoformat(),
            'waste_type': waste_type(event.get('summary', '')),
            'description': description,
        }
        output_rows.append(out)

        if current_waste_type == 'waste':
            out_copy = out.copy()
            out_copy['waste_type'] = 'bulky_goods'
            output_rows.append(out_copy)

    log.info("Start writing gossau-zh.csv")
    csv_file.write_calendar_to_csv(csv_path, output_rows)

except Exception:
    log.exception("Error in uster.py")
    sys.exit(1)
