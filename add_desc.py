#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Add new desc column to CSV

Usage:
  sort_csv.py --file <path-to-csv> 
  sort_csv.py (-h | --help)
  sort_csv.py --version

Options:
  -h, --help                Show this screen.
  --version                 Show version.
  -f, --file <path-to-csv>  Path to the CSV file.
"""

import sys
import logging
import pandas as pd
from docopt import docopt

arguments = docopt(__doc__, version='Add desc file 1.0')

# Parameter
file_path = arguments['--file']

# Logging
log = logging.getLogger(__name__)
log.setLevel(logging.DEBUG)

logging.basicConfig(
    format="%(asctime)s %(levelname)-8s %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)
logging.captureWarnings(True)

try:
    # read CSV in dataframr
    df = pd.read_csv(file_path)

    # sort the dataframe
    df['description'] = ""

    # export sorted dataframe as CSV
    df.to_csv(file_path, index=False, quoting=csv.QUOTE_NONNUMERIC)

except Exception:
    log.exception(f"Error in add_desc.py with file path {file_path}")
    sys.exit(1)
