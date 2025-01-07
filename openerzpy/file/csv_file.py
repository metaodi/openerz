#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import csv
from io import StringIO
import logging
from openerzpy.download import download as dl

log = logging.getLogger(__name__)


def write_calendar_to_csv(csv_path, rows):
    header = [
        'region',
        'zip',
        'area',
        'station',
        'waste_type',
        'col_date',
        'description',
    ]
    write_to_csv(csv_path, header, rows)


def write_station_to_csv(csv_path, rows):
    header = [
        'region',
        'zip',
        'name',
        'oil',
        'glass',
        'metal',
        'textile',
        'description',
    ]
    write_to_csv(csv_path, header, rows)


def write_to_csv(csv_path, header, rows):
    with open(csv_path, 'w', encoding="uft-8") as f:
        writer = csv.DictWriter(
            f,
            header,
            delimiter=',',
            quotechar='"',
            lineterminator='\n',
            quoting=csv.QUOTE_NONNUMERIC
        )
        log.info("Start writing CSV")
        writer.writeheader()
        writer.writerows(rows)


def read_csv_from_url(url, encoding="uft-8"):
    log.info(f"Download content from {url}")

    text = dl.download(url, encoding=encoding)
    reader = csv.DictReader(StringIO(text), delimiter=',')

    return reader
