#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

# download
$DIR/download_csvs.sh

# import csvs
$DIR/import_csvs.sh
