#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate CSV from config file

Usage:
  sort_csv.py --input <path-to-csv> --output <path-to-csv> [--sort <column>] [--verbose]
  sort_csv.py (-h | --help)
  sort_csv.py --version

Options:
  -h, --help                  Show this screen.
  --version                   Show version.
  -i, --input <path-to-csv>   Path to the input CSV file.
  -o, --output <path-to-csv>  Path to the output CSV file.
  -s, --sort <column>         Name of the column to sort by [default: col_date].
  -v, --verbose               Verbose output.
"""

import sys
import os
import logging
import pandas as pd
import csv
from docopt import docopt

arguments = docopt(__doc__, version='Sort CSV file 1.0')

# Parameter
input_path = arguments['--input']
output_path = arguments['--output']
column = arguments['--sort']
verbose = arguments['--verbose']

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
    if not os.path.exists(input_path):
        log.debug(f"Input file {input_path} does not exist.")
        sys.exit(0)

    # read CSV in dataframe
    df = pd.read_csv(input_path)

    # sort the dataframe
    columns = [c.strip() for c in column.split(',')]
    log.debug("Sort CSV using the column '{columns}'")
    df_sorted = df.sort_values(columns)

    # export sorted dataframe as CSV
    df_sorted.to_csv(output_path, index=False, quoting=csv.QUOTE_NONNUMERIC)

except Exception:
    log.exception(f"Error in sort_csv.py with input {input_path}, output {output_path}")
    sys.exit(1)
