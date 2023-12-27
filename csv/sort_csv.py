#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate CSV from config file

Usage:
  sort_csv.py --input <path-to-csv> --output <path-to-csv> [--sort <column>]
  sort_csv.py (-h | --help)
  sort_csv.py --version

Options:
  -h, --help                  Show this screen.
  --version                   Show version.
  -i, --input <path-to-csv>   Path to the input CSV file.
  -o, --output <path-to-csv>  Path to the output CSV file.
  -s, --sort <column>         Name of the column to sort by [default: col_date].
"""

import os
import traceback
import logging
import pandas as pd
from pprint import pformat
from docopt import docopt

arguments = docopt(__doc__, version='Sort CSV file 1.0')

# Parameter
input_path = arguments['--input']
output_path = arguments['--output']
column = arguments['--sort']

try:
    # read CSV in dataframr
    df = pd.read_csv(input_path)

    # sort the dataframr
    columns = [c.strip() for c in column.split(',')]
    df_sorted = df.sort_values(columns)

    # export sorted dataframe as CSV
    df_sorted.to_csv(output_path, index=False)

except Exception as e:
    print("Error: %s" % e)
    print(traceback.format_exc())
    raise
