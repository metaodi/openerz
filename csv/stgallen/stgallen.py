#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import sys
import logging
import csv
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

config_path = os.path.join(__location__, "..", "..", "config", "regions", "stgallen.yml")
config = parse_config.load_config(config_path)

# check if the cache is available, if so skip all steps and use cached file instead
calendar_loaded = False
station_loaded = False
cache_config = config.get("cache")
if cache_config and cache_config.get("calendar"):
    log.info(f"Load CSV stgallen.csv from {cache_config['calendar']}...")
    calendar_path = os.path.join(__location__, 'stgallen.csv')
    cache.copy_file_from_cache(cache_config["calendar"], calendar_path) 
    calendar_loaded = True

if cache_config and cache_config.get("station"):
    log.info(f"Load CSV stgallen_stationen.csv from {cache_config['station']}...")
    station_path = os.path.join(__location__, 'stgallen_stationen.csv')
    cache.copy_file_from_cache(cache_config["station"], station_path) 
    station_loaded = True


def waste_type(in_type):
    waste_type_map = {
        'Kehricht': 'waste',
        'Grüngut': 'organic',
        'Altmetall': 'metal',
        'Metall': 'metal',
        'Papier': 'paper',
        'Karton': 'cardboard',
    }
    return waste_type_map[in_type]


# Abfuhrtermine
def calendar_csv():
    calendar_url = "https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
    rows = csv_file.read_csv_from_url(calendar_url, encoding='utf-8-sig', quoting=csv.QUOTE_MINIMAL)
    output_rows = []
    for row in rows:
        out = {
            'region': 'stgallen',
            'area': row['gebiets_id'],
            'zip': '',
            'col_date': row['datum'],
            'waste_type': waste_type(row['sammlung']),
            'description': '',
        }
        output_rows.append(out)

    log.info("Start writing stgallen.csv")
    csv_path = os.path.join(__location__, 'stgallen.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)

# Recyclingstationen
def station_csv():
    station_csv_url = "https://daten.stadt.sg.ch/explore/dataset/sammelstellen@stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
    log.info(f"Get station CSV from {station_csv_url}")
    rows = csv_file.read_csv_from_url(station_csv_url, encoding='utf-8-sig', quoting=csv.QUOTE_MINIMAL)

    csv_path = os.path.join(__location__, 'stgallen_stationen.csv')
    output_rows = []

    for row in rows:
        print(row)
        waste_types = [a.strip() for a in row['abfallarten'].split(';')]
        new_row = {
            'region': 'stgallen',
            'zip': '',
            'name': row['standort'],
            'oil': ('Altöl' in waste_types),
            'metal': any(x in waste_types for x in ['Dosen', 'Altmetall', 'Aluminium']),
            'glass': ('Glas' in waste_types),
            'textile': ('Alttextilien' in waste_types), 
            'description': '',
        }
        print(new_row)
        output_rows.append(new_row)

    log.info("Start writing stgallen_stationen.csv")
    csv_path = os.path.join(__location__, 'stgallen_stationen.csv')
    csv_file.write_station_to_csv(csv_path, output_rows)


try:
    if not calendar_loaded:
        calendar_csv()
    if not station_loaded:
        station_csv()
except Exception:
    log.exception("Error in stgallen.py")
    sys.exit(1)
