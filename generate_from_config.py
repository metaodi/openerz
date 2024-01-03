#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate CSV from config file

Usage:
  generate_from_config.py --config <path-to-config> --output <path-to-output> [--dry-run] [--verbose]
  generate_from_config.py (-h | --help)
  generate_from_config.py --version

Options:
  -h, --help                    Show this screen.
  --version                     Show version.
  -c, --config <path-to-config> Path to the config file.
  -o, --output <path-to-output> Path to the output CSV file.
  -d, --dry-run                 Parse and validate the config but don't write a file.
  -v, --verbose                 Enable more verbose output.
"""

import os
import datetime
import traceback
import csv
import logging
import sys
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

# Parameter
dry_run = arguments['--dry-run']
verbose = arguments['--verbose']
config_path = arguments['--config']
output_path = arguments['--output']

if not os.path.exists(config_path):
    raise FileNotFoundError(f"--config must be an existing file, {config_path} not found")

# Logging
log = logging.getLogger(__name__)
if verbose:
    log.setLevel(logging.DEBUG)

logging.basicConfig(
    format="%(asctime)s %(levelname)-8s %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)
logging.captureWarnings(True)


try:
    header = [
        'region',
        'zip',
        'area',
        'station',
        'waste_type',
        'col_date',
    ]
    
    if dry_run:
        for event in parse_config.generate_events(config_path, verbose=verbose):
            log.debug(pformat(event))
        sys.exit(0)

    if os.path.exists(output_path):
        mode = 'a'
    else:
        mode = 'w'

    with open(output_path, mode, newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=header, quoting=csv.QUOTE_NONNUMERIC)
        if mode == 'w':
            writer.writeheader()

        for event in parse_config.generate_events(config_path, verbose=verbose):
            log.debug(pformat(event))
            writer.writerow(event)

except Exception as e:
    print("Error: %s" % e)
    print(traceback.format_exc())
    sys.exit(1)
