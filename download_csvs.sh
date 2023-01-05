#!/bin/sh

# Basel
if [ ! -f "./csv/basel/basel.csv" ]; then
    echo "Download Basel data..."
    ./csv/basel/basel.py
fi

# Zurich
if [ ! -f "./csv/zurich/zurich.csv" ]; then
    echo "Download Zurich data..."
    ./csv/zurich/zurich.py
fi

# St. Gallen
if [ ! -f "./csv/stgallen/stgallen.csv" ]; then
    echo "Download St. Gallen data..."
    ./csv/stgallen/stgallen.py
fi

# Thalwil
if [ ! -f "./csv/thalwil/thalwil.csv" ]; then
    echo "Download Thalwil data..."
    ./csv/thalwil/thalwil.py
fi
