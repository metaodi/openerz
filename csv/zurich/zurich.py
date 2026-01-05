#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import csv
import sys
import logging
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

config_path = os.path.join(__location__, "..", "..", "config", "regions", "zurich.yml")
config = parse_config.load_config(config_path)

# check if the cache is available, if so skip all steps and use cached file instead
calendar_loaded = False
station_loaded = False
cache_config = config.get("cache")
if cache_config and cache_config.get("calendar") and config.get("status") == "done":
    log.info(f"Load CSV zurich.csv from {cache_config['calendar']}...")
    calendar_path = os.path.join(__location__, 'zurich.csv')
    cache.copy_file_from_cache(cache_config["calendar"], calendar_path) 
    calendar_loaded = True

if cache_config and cache_config.get("station") and config.get("status") == "done":
    log.info(f"Load CSV zurich_stationen.csv from {cache_config['station']}...")
    station_path = os.path.join(__location__, 'zurich_stationen.csv')
    cache.copy_file_from_cache(cache_config["station"], station_path) 
    station_loaded = True

year = "2026"

waste_sources = [
    {
        "waste_type": 'organic',
        "url": f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_bioabfall/download/entsorgungskalender_bioabfall_{year}.csv",
    },
    {
        "waste_type": 'mobile',
        "url": f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_mobiler_recyclinghof/download/mobiler_recyclinghof_{year}.csv",
    },
    {
        "waste_type": 'cardboard',
        "url": f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_karton/download/entsorgungskalender_karton_{year}.csv",
    },
    {
        "waste_type": 'waste',
        "url": f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_kehricht/download/entsorgungskalender_kehricht_{year}.csv",
    },
    {
        "waste_type": 'paper',
        "url": f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_papier/download/entsorgungskalender_papier_{year}.csv",
    },
    {
        "waste_type": 'special',
        "url": f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_sonderabfall/download/entsorgungskalender_sonderabfall_{year}.csv",
    },
]

# Abfuhrtermine
def calendar_csv():
    output_rows = []
    for s in waste_sources:
        waste_type = s['waste_type']
        url = s['url']
        log.info(f"Get {waste_type} CSV from {url}")
        rows = csv_file.read_csv_from_url(url, encoding='utf-8-sig')

        for row in rows:
            from pprint import pprint
            pprint(row)
            out = {
                'region': 'zurich',
                'area': int(row['PLZ']),
                'zip': int(row['PLZ']),
                'col_date': row['Abholdatum'],
                'waste_type': waste_type,
                'station': row.get('Station', ''),
                'description': '',
            }
            output_rows.append(out)

    log.info("Start writing zurich.csv")
    csv_path = os.path.join(__location__, 'zurich.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)


# Recyclingstationen
def station_csv():
    station_csv_url = f"https://data.stadt-zuerich.ch/dataset/entsorgungskalender_sammelstellen/download/entsorgungskalender_sammelstellen_{year}.csv"
    log.info(f"Get station CSV from {station_csv_url}")
    rows = csv_file.read_csv_from_url(station_csv_url, encoding='utf-8-sig')

    output_rows = []
    for row in rows:
        if not row["Station"] or row["Station"] == '.':
            continue
        print(row)
        new_row = {
            'region': 'zurich',
            'zip': int(row['PLZ']),
            'name': row['Station'],
            'oil': (row['Oel'] == 'x'),
            'metal': (row['Metall'] == 'x'),
            'glass': (row['Glas'] == 'x'),
            'textile': (row['Textilien'] == 'x'),
            'description': '',
        }
        output_rows.append(new_row)

    log.info("Start writing zurich_stationen.csv")
    csv_path = os.path.join(__location__, 'zurich_stationen.csv')
    csv_file.write_station_to_csv(csv_path, output_rows)


try:
    if not calendar_loaded:
        calendar_csv()
    if not station_loaded:
        station_csv()
except Exception:
    log.exception("Error in zurich.py")
    sys.exit(1)
