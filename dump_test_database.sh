#!/bin/bash

set -e

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/.env.test
pg_dump $DATABASE_URL > $DIR/dump.sql

