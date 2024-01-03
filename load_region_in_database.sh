#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

if [ $# -eq 0 ]; then
    echo "Please provide region as first argument"
    exit 1
fi

region=$1

# Run script
if test -f "$DIR/csv/$region/$region.py"; then
    echo "Run ${region}.py script..."
    $DIR/csv/$region/$region.py
fi

if [ "$region" = "zimmerberg" ]; then
    region="adliswil langnau kilchberg rueschlikon thalwil oberrieden horgen waedenswil richterswil"
fi


# Generate from config
for r in $region;
do
    rm -f $DIR/csv/$r/$r.csv
    echo "Generate ${r} CSV..."
    $DIR/generate_from_config.py -c $DIR/config/regions/$r.yml -o $DIR/csv/$r/$r.csv --verbose
    $DIR/sort_csv.py -i $DIR/csv/$r/$r.csv -o $DIR/csv/$r/$r.csv -s "col_date, waste_type"

    echo "Import ${r}_stationen.csv CSV..."
    $DIR/update_database.py -f $DIR/csv/${r}/${r}_stationen.csv --table station --region $r 
    echo "Import ${r}.csv CSV..."
    $DIR/update_database.py -f $DIR/csv/${r}/${r}.csv --table calendar --region $r 
done
