#!/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"


# Station
$DIR/update_database.py -f $DIR/csv/basel/basel_stationen.csv --table station --region basel --purge --drop
$DIR/update_database.py -f $DIR/csv/zurich/zurich_stationen.csv --table station --region zurich


# Calendar
$DIR/update_database.py -f $DIR/csv/basel/basel.csv --table calendar --region basel --purge --drop
$DIR/update_database.py -f $DIR/csv/zurich/zurich.csv --table calendar --region zurich


