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
    calendar_url = "https://data.bs.ch/explore/dataset/100096/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
    rows = csv_file.read_csv_from_url(calendar_url, encoding='utf-8-sig')
    output_rows = []
    for row in rows:
        out = {
            'region': 'basel',
            'area': row['zone'],
            'zip': '',
            'col_date': row['termin'],
            'waste_type': waste_type(row['art']),
            'description': '',
        }
        if row['termin']:
            output_rows.append(out)

    log.info("Start writing basel.csv")
    csv_path = os.path.join(__location__, 'basel.csv')
    csv_file.write_calendar_to_csv(csv_path, output_rows)


# Recyclingstationen
def station_csv():
    station_csv_url = "https://data.bs.ch/explore/dataset/100027/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
    log.info(f"Get station CSV from {station_csv_url}")
    rows = csv_file.read_csv_from_url(station_csv_url, encoding='utf-8-sig')

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



sys.exit(0)

try:
    calendar_csv()
    station_csv()
except Exception:
    log.exception("Error in basel.py")
    sys.exit(1)
