#!/bin/bash

set -e

DIR="$(cd "$(dirname "$0")" && pwd)"

# start docker
docker stop openerz-pg-test || true
docker run -d --rm --name openerz-pg-test -e POSTGRES_PASSWORD="test-pw" -e POSTGRES_DB="postgres-test" -p 5433:5432 postgres:alpine

sleep 2

# download
$DIR/download_csvs.sh

# import csvs
$DIR/import_csvs.sh
