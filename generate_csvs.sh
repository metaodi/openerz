#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

# loop over all csvs to run scripts
for f in $DIR/csv/*/
do
    [ -f "$f" ] || break

    echo "Generate ${f} CSV..."
    if test -f "$DIR/csv/$f/$f.py"; then
        $DIR/csv/$f/$f.py
    fi
done

# loop over all config files
for f in $DIR/config/regions/*.yml
do
    [ -f "$f" ] || break

    region=$(basename $f .yml)
    echo "Generate ${region} CSV..."
    $DIR/generate_from_config.py -c $DIR/config/regions/$region.yml -o $DIR/csv/$region/$region.csv --verbose
    $DIR/sort_csv.py -i $DIR/csv/$region/$region.csv -o $DIR/csv/$region/$region.csv -s "col_date, waste_type"
done
