#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import sys
import logging
from openerzpy import csv_file
from openerzpy import cache
from openerzpy import parse_config
import csv

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

config_path = os.path.join(__location__, "..", "..", "config", "regions", "basel.yml")
config = parse_config.load_config(config_path)

# check if the cache is available, if so skip all steps and use cached file instead
calendar_loaded = False
station_loaded = False
cache_config = config.get("cache")
if cache_config and cache_config.get("calendar"):
    calendar_path = os.path.join(__location__, 'basel.csv')
    cache.copy_file_from_cache(cache_config["calendar"], calendar_path) 
    calendar_loaded = True

if cache_config and cache_config.get("station"):
    station_path = os.path.join(__location__, 'basel_stationen.csv')
    cache.copy_file_from_cache(cache_config["station"], station_path) 
    station_loaded = True


def waste_type(in_type):
    waste_type_map = {
        'Kehrichtabfuhr': 'waste',
        'Grünabfuhr': 'organic',
        'Metallabfuhr': 'metal',
        'Papierabfuhr': 'paper',
        'Grobsperrgut': 'bulky_goods',
        'Häckseldienst': 'chipping_service',
        'Unbrennbares': 'incombustibles',
    }
    return waste_type_map[in_type]


# Abfuhrtermine
def calendar_csv():
    calendar_url = "https://data.bs.ch/api/explore/v2.1/catalog/datasets/100096/exports/csv?lang=en&timezone=Europe%2FZurich&use_labels=true&delimiter=%2C"
    rows = csv_file.read_csv_from_url(calendar_url, encoding='utf-8-sig', quoting=csv.QUOTE_MINIMAL)
    output_rows = []
    for row in rows:
        print(row)
        out = {
            'region': 'basel',
            'area': row['Zone'],
            'zip': '',
            'col_date': row['Termin'],
            'waste_type': waste_type(row['Art']),
            'description': '',
        }
        if row['Termin']:
            output_rows.append(out)

    log.info("Start writing basel.csv")
    csv_path = os.path.join(__location__, 'basel.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)


# Recyclingstationen
def station_csv():
    station_csv_url = "https://data.bs.ch/explore/dataset/100027/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
    log.info(f"Get station CSV from {station_csv_url}")
    rows = csv_file.read_csv_from_url(station_csv_url, encoding='utf-8-sig', quoting=csv.QUOTE_MINIMAL)

    output_rows = []
    for row in rows:
        print(row)
        new_row = {
            'region': 'basel',
            'zip': row['plz'],
            'name': row['adresse'],
            'oil': False,
            'metal': True,
            'glass': True,
            'textile': False,
            'description': '',
        }
        output_rows.append(new_row)

    log.info("Start writing basel_stationen.csv")
    csv_path = os.path.join(__location__, 'basel_stationen.csv')
    csv_file.write_station_to_csv(csv_path, output_rows)


try:
    if not calendar_loaded:
        calendar_csv()
    if not station_loaded:
        station_csv()
except Exception:
    log.exception("Error in basel.py")
    sys.exit(1)
