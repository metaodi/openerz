#!/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"


# Station
$DIR/update_database.py -f $DIR/csv/basel/basel_stationen.csv --table station --region basel --purge --drop
$DIR/update_database.py -f $DIR/csv/zurich/zurich_stationen.csv --table station --region zurich
$DIR/update_database.py -f $DIR/csv/stgallen/stgallen_stationen.csv --table station --region stgallen
$DIR/update_database.py -f $DIR/csv/thalwil/thalwil_stationen.csv --table station --region thalwil
$DIR/update_database.py -f $DIR/csv/adliswil/adliswil_stationen.csv --table station --region adliswil


# Calendar
$DIR/update_database.py -f $DIR/csv/basel/basel.csv --table calendar --region basel --purge --drop
$DIR/update_database.py -f $DIR/csv/zurich/zurich.csv --table calendar --region zurich
$DIR/update_database.py -f $DIR/csv/stgallen/stgallen.csv --table calendar --region stgallen
$DIR/update_database.py -f $DIR/csv/thalwil/thalwil.csv --table calendar --region thalwil
$DIR/update_database.py -f $DIR/csv/adliswil/adliswil.csv --table calendar --region adliswil


