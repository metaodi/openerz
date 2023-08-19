#!/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"


# Station
$DIR/update_database.py -f $DIR/csv/basel/basel_stationen.csv --table station --region basel --purge --drop
$DIR/update_database.py -f $DIR/csv/zurich/zurich_stationen.csv --table station --region zurich
$DIR/update_database.py -f $DIR/csv/stgallen/stgallen_stationen.csv --table station --region stgallen
$DIR/update_database.py -f $DIR/csv/zimmerberg/thalwil_stationen.csv --table station --region thalwil
$DIR/update_database.py -f $DIR/csv/zimmerberg/adliswil_stationen.csv --table station --region adliswil
$DIR/update_database.py -f $DIR/csv/zimmerberg/horgen_stationen.csv --table station --region horgen
$DIR/update_database.py -f $DIR/csv/zimmerberg/langnau_stationen.csv --table station --region langnau
$DIR/update_database.py -f $DIR/csv/zimmerberg/richterswil_stationen.csv --table station --region richterswil
$DIR/update_database.py -f $DIR/csv/zimmerberg/rueschlikon_stationen.csv --table station --region rueschlikon
$DIR/update_database.py -f $DIR/csv/zimmerberg/waedenswil_stationen.csv --table station --region waedenswil
$DIR/update_database.py -f $DIR/csv/zimmerberg/oberrieden_stationen.csv --table station --region oberrieden
$DIR/update_database.py -f $DIR/csv/zimmerberg/kilchberg_stationen.csv --table station --region kilchberg
$DIR/update_database.py -f $DIR/csv/uster/uster_stationen.csv --table station --region uster
$DIR/update_database.py -f $DIR/csv/wangen-bruttisellen/wangen-bruttisellen_stationen.csv --table station --region wangen-bruttisellen
$DIR/update_database.py -f $DIR/csv/duebendorf/duebendorf_stationen.csv --table station --region duebendorf


# Calendar
$DIR/update_database.py -f $DIR/csv/basel/basel.csv --table calendar --region basel --purge --drop
$DIR/update_database.py -f $DIR/csv/zurich/zurich.csv --table calendar --region zurich
$DIR/update_database.py -f $DIR/csv/stgallen/stgallen.csv --table calendar --region stgallen
$DIR/update_database.py -f $DIR/csv/zimmerberg/thalwil.csv --table calendar --region thalwil
$DIR/update_database.py -f $DIR/csv/zimmerberg/adliswil.csv --table calendar --region adliswil
$DIR/update_database.py -f $DIR/csv/zimmerberg/horgen.csv --table calendar --region horgen
$DIR/update_database.py -f $DIR/csv/zimmerberg/langnau.csv --table calendar --region langnau
$DIR/update_database.py -f $DIR/csv/zimmerberg/richterswil.csv --table calendar --region richterswil
$DIR/update_database.py -f $DIR/csv/zimmerberg/rueschlikon.csv --table calendar --region rueschlikon
$DIR/update_database.py -f $DIR/csv/zimmerberg/waedenswil.csv --table calendar --region waedenswil
$DIR/update_database.py -f $DIR/csv/zimmerberg/oberrieden.csv --table calendar --region oberrieden
$DIR/update_database.py -f $DIR/csv/zimmerberg/kilchberg.csv --table calendar --region kilchberg
$DIR/update_database.py -f $DIR/csv/uster/uster.csv --table calendar --region uster
$DIR/update_database.py -f $DIR/csv/wangen-bruttisellen/wangen-bruttisellen.csv --table calendar --region wangen-bruttisellen
$DIR/update_database.py -f $DIR/csv/duebendorf/duebendorf.csv --table calendar --region duebendorf
