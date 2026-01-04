#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Shwo status of config files

Usage:
  status_config.py [--status <status>] 
  status_config.py (-h | --help)
  status_config.py --version

Options:
  -h, --help                    Show this screen.
  --version                     Show version.
  -s, --status <status>         Filter config by status [default: ].
"""

import os
import sys
from docopt import docopt
from openerzpy.parse import parse_config
import pathlib
import yaml

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

arguments = docopt(__doc__, version='Show status of config files 1.0')
status = arguments["--status"]

try:
    directory = os.path.join(__location__, 'config', 'regions')
    for config_path in pathlib.Path(directory).glob('*.yml'):
        # validate config
        config = parse_config.load_config(config_path)
        if status and status == config['status']:
            print(f"Config {config['region']}")
            print(yaml.dump(config))
        elif not status:
            print(f"Config {config['region']}")
            print(yaml.dump(config))

except Exception:
    log.exception("Error in validate_config.py")
    sys.exit(1)
