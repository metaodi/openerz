#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

# loop over all csv folders to run scripts all available scripts
for d in $DIR/csv/*/
do
    [ -d "$d" ] || break

    region=$(basename $d)

    if test -f "$DIR/csv/$region/$region.py"; then
        echo "Run ${region}.py script..."
        $DIR/csv/$region/$region.py
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
