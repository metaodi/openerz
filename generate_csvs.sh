#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

# Basel
echo "Download Basel data..."
./csv/basel/basel.py

# Zurich
echo "Download Zurich data..."
./csv/zurich/zurich.py

# St. Gallen
echo "Download St. Gallen data..."
./csv/stgallen/stgallen.py

# Zimmerberg (District Horgen)
echo "Download Zimmerberg data..."
./csv/zimmerberg/zimmerberg.py

# Uster
echo "Download Uster data..."
./csv/uster/uster.py

# Dübendorf
echo "Download Dübendorf data..."
./csv/duebendorf/duebendorf.py

# Wangen-Brüttisellen
echo "Generate Wangen-Brüttisellen data..."
./csv/generate_from_config.py -c ./csv/wangen-bruttisellen/wangen-bruttisellen.yml -o ./csv/wangen-bruttisellen/wangen-bruttisellen.csv --verbose
./csv/sort_csv.py -i ./csv/wangen-bruttisellen/wangen-bruttisellen.csv -o ./csv/wangen-bruttisellen/wangen-bruttisellen.csv -s "col_date, waste_type"

# Bassersdorf
echo "Generate Bassersdorf data..."
./csv/generate_from_config.py -c ./csv/bassersdorf/bassersdorf.yml -o ./csv/bassersdorf/bassersdorf.csv --verbose
./csv/sort_csv.py -i ./csv/bassersdorf/bassersdorf.csv -o ./csv/bassersdorf/bassersdorf.csv -s "col_date, waste_type"
