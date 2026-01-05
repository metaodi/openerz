#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os
import csv
import re
import logging
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


municipalities = {
    'adliswil': {
        'zip': '8134',
    },
    'horgen': {
        'zip': '8810',
    },
    'kilchberg': {
        'zip': '8802',
    },
    'langnau': {
        'zip': '8135',
    },
    'richterswil': {
        'zip': '8805',
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
    'Wertstoffsammelstelle (verlängert)',
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

    muni_config_path = os.path.join(__location__, "..", "..", "config", "regions", f"{muni}.yml")
    muni_config = parse_config.load_config(muni_config_path)
    csv_path = os.path.join(__location__, '..', muni, f'{muni}.csv')

    # check if the cache is available, if so skip all steps and use cached file instead
    cache_config = muni_config.get("cache")
    if cache_config and cache_config.get("calendar") and muni_config.get("status") == "done":
        log.info(f"Load CSV {muni}.csv from {cache_config['calendar']}...")
        cache.copy_file_from_cache(cache_config["calendar"], csv_path) 
        return

    log.info(f"Download URL: {url}")
    dl.download_file(url, cal_path)

    events = parse_ics.parse_file(cal_path)
    output_rows = []
    for event in events:
        m = re.match(r'(?P<art>.*?)( (Zone|Tour) (?P<zone>\w+?)(?P<rest>.*))?$', event['summary'])
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
            'description': '',
        }
        output_rows.append(out)
    csv_file.write_calendar_to_csv(csv_path, output_rows)

try:
    for muni, config in municipalities.items():
        generate_muni_csv(muni, config)
except Exception:
    log.exception("Error in zimmerberg.py")
    sys.exit(1)
