#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import requests
import csv
from io import StringIO
import logging

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

last_year = "2023"
year = "2024"

waste_sources = [
    {
        "waste_type": 'organic',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_bioabfall/download/entsorgungskalender_bioabfall_{last_year}.csv",
    },
    {
        "waste_type": 'cargotram',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_cargotram/download/entsorgungskalender_cargoTram_{last_year}.csv",
    },
    {
        "waste_type": 'etram',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_etram/download/entsorgungskalender_eTram_{last_year}.csv",
    },
    {
        "waste_type": 'cardboard',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_karton/download/entsorgungskalender_karton_{last_year}.csv",
    },
    {
        "waste_type": 'waste',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_kehricht/download/entsorgungskalender_kehricht_{last_year}.csv",
    },
    {
        "waste_type": 'paper',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_papier/download/entsorgungskalender_papier_{last_year}.csv",
    },
    {
        "waste_type": 'special',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_sonderabfall/download/entsorgungskalender_sonderabfall_{last_year}.csv",
    },
    {
        "waste_type": 'organic',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_bioabfall/download/entsorgungskalender_bioabfall_{year}.csv",
    },
    {
        "waste_type": 'cargotram',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_cargotram/download/entsorgungskalender_cargoTram_{year}.csv",
    },
    {
        "waste_type": 'etram',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_etram/download/entsorgungskalender_eTram_{year}.csv",
    },
    {
        "waste_type": 'cardboard',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_karton/download/entsorgungskalender_karton_{year}.csv",
    },
    {
        "waste_type": 'waste',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_kehricht/download/entsorgungskalender_kehricht_{year}.csv",
    },
    {
        "waste_type": 'paper',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_papier/download/entsorgungskalender_papier_{year}.csv",
    },
    {
        "waste_type": 'special',
        "url": f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_sonderabfall/download/entsorgungskalender_sonderabfall_{year}.csv",
    },
]

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
        quoting=csv.QUOTE_NONNUMERIC
    )
    log.info("Start writing zurich.csv")
    writer.writeheader()

    for s in waste_sources:
        waste_type = s['waste_type']
        url = s['url']
        log.info(f"Get {waste_type} CSV from {url}")
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
CSV_URL = f"https://data.stadt-zuerich.ch/dataset/erz_entsorgungskalender_sammelstellen/download/entsorgungskalender_sammelstellen_{year}.csv"
log.info(f"Get station CSV from {CSV_URL}")
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
        quoting=csv.QUOTE_NONNUMERIC
    )
    log.info("Start writing zurich_stationen.csv")
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

