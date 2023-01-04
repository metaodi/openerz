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

waste_sources = {
    'organic': "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_bioabfall/download/entsorgungskalender_bioabfall_2023.csv",
    'cargotram':"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_cargotram/download/entsorgungskalender_cargoTram_2023.csv",
    'etram': "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_etram/download/entsorgungskalender_eTram_2023.csv",
    "cardboard": "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_karton/download/entsorgungskalender_karton_2023.csv",
    "waste": "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_kehricht/download/entsorgungskalender_kehricht_2023.csv",
    "paper": "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_papier/download/entsorgungskalender_papier_2023.csv",
    "special": "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_sonderabfall/download/entsorgungskalender_sonderabfall_2023.csv"
}

# Abfuhrtermine
header = [
    'region',
    'zip',
    'area',
    'station',
    'waste_type',
    'col_date',
]

csv_path = os.path.join(__location__, 'zurich.csv')
with open(csv_path, 'w') as f:
    writer = csv.DictWriter(
        f,
        header,
        delimiter=',',
        quotechar='"',
        lineterminator='\r\n',
        quoting=csv.QUOTE_MINIMAL
    )
    writer.writeheader()

    for waste_type, url in waste_sources.items():
        r = requests.get(url)
        r.encoding = 'utf-8-sig'
        reader = csv.DictReader(StringIO(r.text), delimiter=',')

        for row in reader:
            from pprint import pprint
            pprint(row)
            out = {
                'region': 'zurich',
                'area': row['PLZ'],
                'zip': row['PLZ'],
                'col_date': row['Abholdatum'],
                'waste_type': waste_type,
                'station': row.get('Station', ''),
            }
            writer.writerow(out)

# Recyclingstationen
CSV_URL = "https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_sammelstellen/download/entsorgungskalender_sammelstellen_2023.csv"
r = requests.get(CSV_URL)
r.encoding = 'utf-8-sig'
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

csv_path = os.path.join(__location__, 'zurich_stationen.csv')
with open(csv_path, 'w') as f:
    writer = csv.DictWriter(
        f,
        header,
        delimiter=',',
        quotechar='"',
        lineterminator='\r\n',
        quoting=csv.QUOTE_MINIMAL
    )
    writer.writeheader()

    for row in reader:
        print(row)
        new_row = {
            'region': 'zurich',
            'zip': row['PLZ'],
            'name': row['Station'],
            'oil': (row['Oel'] == 'x'),
            'metal': (row['Metall'] == 'x'),
            'glass': (row['Glas'] == 'x'),
            'textile': (row['Textilien'] == 'x'),
        }
        writer.writerow(new_row)

