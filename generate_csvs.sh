#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

# loop over all csv data folders
for f in $DIR/config/*.yml
do
    [ -f "$f" ] || break

    region=$(basename $f .yml)
    echo "Generate ${region} CSV..."
    if test -f "$DIR/csv/$region/$region.py"; then
        $DIR/csv/$region/$region.py
    else
        $DIR/generate_from_config.py -c $DIR/config/$region.yml -o $DIR/csv/$region/$region.csv --verbose
        $DIR/sort_csv.py -i $DIR/csv/$region/$region.csv -o $DIR/csv/$region/$region.csv -s "col_date, waste_type"
    fi
done
