#!/bin/sh

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
