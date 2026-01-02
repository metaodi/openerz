#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import csv
import sys
import logging
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
                'area': row['PLZ'],
                'zip': row['PLZ'],
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
        print(row)
        new_row = {
            'region': 'zurich',
            'zip': row['PLZ'],
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
    calendar_csv()
    station_csv()
except Exception:
    log.exception("Error in zurich.py")
    sys.exit(1)
