#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT


DIR="$(cd "$(dirname "$0")" && pwd)"

# Station
drop_args="--purge --drop"
for f in $DIR/config/regions/*.yml
do
    [ -f "$f" ] || break

    region=$(basename $f .yml)
    echo "Import ${region}_stationen.csv CSV..."
    $DIR/update_database.py -f $DIR/csv/${region}/${region}_stationen.csv --table station --region $region $drop_args
    drop_args=""
done

# Calendar
drop_args="--purge --drop"
for f in $DIR/config/regions/*.yml
do
    [ -f "$f" ] || break

    region=$(basename $f .yml)
    echo "Import ${region}.csv CSV..."
    $DIR/update_database.py -f $DIR/csv/${region}/${region}.csv --table calendar --region $region $drop_args
    drop_args=""
done
