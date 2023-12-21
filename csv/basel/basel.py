#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import requests
import csv
from io import StringIO

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

# Abfuhrtermine
CSV_URL = "https://data.bs.ch/explore/dataset/100096/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
r = requests.get(CSV_URL)
reader = csv.DictReader(StringIO(r.text), delimiter=',')

header = [
    'region',
    'zip',
    'area',
    'station',
    'waste_type',
    'col_date',
]

waste_type_map = {
    'Kehrichtabfuhr': 'waste',
    'Grünabfuhr': 'organic',
    'Metallabfuhr': 'metal',
    'Papierabfuhr': 'paper',
    'Grobsperrgut': 'bulky_goods',
    'Häckseldienst': 'chipping_service',
    'Unbrennbares': 'incombustibles',
}


def waste_type(in_type):
    return waste_type_map[in_type]

csv_path = os.path.join(__location__, 'basel.csv')
with open(csv_path, 'w') as f:
    writer = csv.DictWriter(
        f,
        header,
        delimiter=',',
        quotechar='"',
        lineterminator='\r\n',
        quoting=csv.QUOTE_NONNUMERIC
    )
    writer.writeheader()

    for row in reader:
        out = {
            'region': 'basel',
            'area': row['zone'],
            'zip': '',
            'col_date': row['termin'],
            'waste_type': waste_type(row['art']),
        }
        if row['termin']:
            writer.writerow(out)

# Recyclingstationen
CSV_URL = "https://data.bs.ch/explore/dataset/100027/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
r = requests.get(CSV_URL)
reader = csv.DictReader(StringIO(r.text), delimiter=',')

header = [
    'region',
    'zip',
    'name',
    'oil',
    'glass',
    'metal',
    'textile'
]

csv_path = os.path.join(__location__, 'basel_stationen.csv')
with open(csv_path, 'w') as f:
    writer = csv.DictWriter(
        f,
        header,
        delimiter=',',
        quotechar='"',
        lineterminator='\r\n',
        quoting=csv.QUOTE_NONNUMERIC
    )
    writer.writeheader()

    for row in reader:
        print(row)
        new_row = {
            'region': 'basel',
            'zip': row['plz'],
            'name': row['adresse'],
            'oil': False,
            'metal': True,
            'glass': True,
            'textile': False,
        }
        writer.writerow(new_row)

