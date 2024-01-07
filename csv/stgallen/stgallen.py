#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
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


def waste_type(in_type):
    waste_type_map = {
        'Kehricht': 'waste',
        'Grüngut': 'organic',
        'Altmetall': 'metal',
        'Papier': 'paper',
        'Karton': 'cardboard',
    }
    return waste_type_map[in_type]


# Abfuhrtermine
def calendar_csv():
    calendar_url = "https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
    rows = csv_file.read_csv_from_url(calendar_url, encoding='utf-8-sig')
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
    rows = csv_file.read_csv_from_url(station_csv_url, encoding='utf-8-sig')

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
    calendar_csv()
    station_csv()
except Exception:
    log.exception("Error in zurich.py")
    sys.exit(1)
