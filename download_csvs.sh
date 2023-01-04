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
