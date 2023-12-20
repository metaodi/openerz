#!/bin/bash

set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

# download
$DIR/download_csvs.sh

# import csvs
$DIR/import_csvs.sh
