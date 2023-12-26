#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate CSV from config file

Usage:
  generate_from_config.py --config <path-to-config> --output <path-to-output> --year <year> [--verbose]
  generate_from_config.py (-h | --help)
  generate_from_config.py --version

Options:
  -h, --help                    Show this screen.
  --version                     Show version.
  -c, --config <path-to-config> Path to the config file.
  -o, --output <path-to-output> Path to the output CSV file.
  -y, --year <year>             Year to generate the output for.
  -v, --verbose                 Enable more verbose output.
"""

import os
import datetime
import traceback
import csv
import logging
from pprint import pformat
from docopt import docopt
from openerzpy.parse import parse_config

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

arguments = docopt(__doc__, version='Generate CSV from config file 1.0')

# Logging
log = logging.getLogger(__name__)
if arguments['--verbose']:
    log.setLevel(logging.DEBUG)

logging.basicConfig(
    format="%(asctime)s %(levelname)-8s %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)
logging.captureWarnings(True)

# Parameter
config_path = arguments['--config']
output_path = arguments['--output']
year = int(arguments['--year'])

if not os.path.exists(config_path):
    raise FileNotFoundError(f"--config must be an existing file, {config_path} not found")


try:
    header = [
        'region',
        'zip',
        'area',
        'station',
        'waste_type',
        'col_date',
    ]
    with open(output_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=header, quoting=csv.QUOTE_NONNUMERIC)
        writer.writeheader()

        start_date = datetime.datetime(year, 1, 1)
        end_date = datetime.datetime(year, 12, 31)

        for event in parse_config.generate_events(config_path, start_date, end_date):
            log.debug(pformat(event))
            writer.writerow(event)

except Exception as e:
    print("Error: %s" % e)
    print(traceback.format_exc())
    raise
