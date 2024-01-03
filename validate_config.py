#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import logging
import sys
from pprint import pformat
from openerzpy.parse import parse_config
import pathlib

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)

log = logging.getLogger(__name__)
log.setLevel(logging.DEBUG)

logging.basicConfig(
    format="%(asctime)s %(levelname)-8s %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)
logging.captureWarnings(True)

try:
    regions = {}
    directory = os.path.join(__location__, 'config', 'regions')
    for config_path in pathlib.Path(directory).glob('*.yml'):
        # validate config
        config = parse_config.load_config(config_path)

        # generate events
        for event in parse_config.generate_events(config_path, verbose=True):
            log.debug(pformat(event))

        if config['region'] in regions:
            raise Exception(f"Region {config['region']} is duplicate in {config_path} and {regions[config['region']]}.")

        regions[config['region']] = config_path


except Exception:
    log.exception("Error in validate_config.py")
    sys.exit(1)
