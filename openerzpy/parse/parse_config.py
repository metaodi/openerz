#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from recurrent.event_parser import RecurringEvent
from dateutil import rrule
from datetime import datetime, date
import yaml
import json
from schema import Schema, And, Or, Use, Optional, SchemaError
import sys
import os
import logging
from pprint import pformat


log = logging.getLogger(__name__)

logging.basicConfig(
    format="%(asctime)s %(levelname)-8s %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)
logging.captureWarnings(True)

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)


def generate_events(config_path, verbose=False):
    if verbose:
        log.setLevel(logging.DEBUG)
    config = load_config(config_path)
    region = config['region']
    start_date = datetime.fromisoformat(config['start_date'])
    end_date = datetime.fromisoformat(config['end_date'])

    for waste_type, collections in config['collections'].items():
        if not collections:
            continue
        for collection in collections:
            area = collection.get('area', '')
            station = collection.get('station', '')
            zip_code = config.get('zip') or collection.get('zip', '')
            description = collection.get('description', '')

            ruleset = rrule.rruleset()
            adder = RuleAdder(ruleset, start_date, end_date)
            for slot in collection['schedule']:
                log.debug(f"Adding rule for {slot} (RuleAdder)")
                adder.add_rule(slot)

            excludes = config.get('exclude', [])
            excludes.extend(collection.get('exclude') or [])
            excluder = RuleExcluder(ruleset, start_date, end_date)
            for slot in excludes:
                log.debug(f"Adding rule for {slot} (RuleExcluder)")
                excluder.add_rule(slot)
        
            for col_date in ruleset.between(start_date, end_date, inc=True):
                yield {
                    'region': region,
                    'area': area,
                    'zip': zip_code,
                    'station': station,
                    'col_date': col_date.date().isoformat(),
                    'waste_type': waste_type,
                    'description': description,
                }


def load_config(config_path):
    waste_type_path = os.path.join(__location__, '..', '..', 'config', 'waste_types.yml')
    with open(waste_type_path, 'r') as f:
        waste_types = yaml.safe_load(f)

    schema = Schema({
        "region": And(str, len),
        "start_date": Or(str, And(date, Use(lambda n: n.isoformat()))),
        "end_date": Or(str, And(date, Use(lambda n: n.isoformat()))),
        "collections": {
             Or(*list(waste_types.keys())): Or([
                 {
                     "schedule": [Or(str, And(date, Use(lambda n: n.isoformat())))],
                     Optional("area"): And(Use(str), Use(str.lower), str, len),
                     Optional("zip"): And(Use(int), lambda n: 1000 <= n <= 9999),
                     Optional("station"): And(str, len),
                     Optional("description"): And(str, len),
                     Optional("exclude"): Or([str], [And(date, Use(lambda n: n.isoformat()))], None),
                 }
             ], None)
        },
        Optional("zip"): And(Use(int), lambda n: 1000 <= n <= 9999),
        Optional("exclude"): Or([Or(str, And(date, Use(lambda n: n.isoformat())))], None),
    })

    with open(config_path) as f:
        config = yaml.safe_load(f)

    validated_config = schema.validate(config)
    log.debug(pformat(validated_config))
    return validated_config


class RuleGenerator(object):
    def __init__(self, ruleset, start_date, end_date):
        self.ruleset = ruleset
        self.start_date = start_date
        self.end_date = end_date
        self.parser = RecurringEvent(now_date=start_date)

    def add_rule(self, slot):
        result = self.parser.parse(slot)
        if self.parser.is_recurring:
            rule = rrule.rrulestr(self.parser.get_RFC_rrule(), dtstart=self.start_date)
            self.rule_action(rule)
        elif isinstance(result, datetime):
            self.date_action(result)
        else:
            raise ValueError(f"Could not find rule for '{slot}'.")

    def rule_action(self, rule):
        raise NotImplementedError("This should never be called")

    def date_action(self, rule_date):
        raise NotImplementedError("This should never be called")


class RuleAdder(RuleGenerator):
    def rule_action(self, rule):
        self.ruleset.rrule(rule)

    def date_action(self, rule_date):
        self.ruleset.rdate(rule_date)


class RuleExcluder(RuleGenerator):
    def rule_action(self, rule):
        ex_dates = list(rule.between(self.start_date, self.end_date, inc=True))
        for d in ex_dates:
            self.ruleset.exdate(d)

    def date_action(self, rule_date):
        self.ruleset.exdate(rule_date)
