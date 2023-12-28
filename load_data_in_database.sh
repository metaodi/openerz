#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

# get the CSVs
$DIR/generate_csvs.sh

# import csvs
$DIR/import_csvs.sh
