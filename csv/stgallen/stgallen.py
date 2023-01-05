#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import csv
import os
from io import StringIO

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

# Abfuhrtermine
CSV_URL = "https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
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
    'Kehricht': 'waste',
    'Grüngut': 'organic',
    'Altmetall': 'metal',
    'Papier': 'paper',
    'Karton': 'cardboard',
}


def waste_type(in_type):
    return waste_type_map[in_type]

csv_path = os.path.join(__location__, 'stgallen.csv')
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
            'region': 'stgallen',
            'area': row['gebiets_id'],
            'zip': '',
            'col_date': row['datum'],
            'waste_type': waste_type(row['sammlung']),
        }
        writer.writerow(out)

# Recyclingstationen
CSV_URL = "https://daten.stadt.sg.ch/explore/dataset/sammelstellen@stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
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

csv_path = os.path.join(__location__, 'stgallen_stationen.csv')
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
        waste_types = [a.strip() for a in row['abfallarten'].split(';')]
        new_row = {
            'region': 'stgallen',
            'zip': '',
            'name': row['standort'],
            'oil': ('Altöl' in waste_types),
            'metal': any(x in waste_types for x in ['Dosen', 'Altmetall', 'Aluminium']),
            'glass': ('Glas' in waste_types),
            'textile': ('Alttextilien' in waste_types), 
        }
        print(new_row)
        writer.writerow(new_row)

