#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Update the database with a CSV file

Usage:
  update_database.py --file <path-to-csv> --table <table> --region <region> [--purge] [--drop]
  update_database.py (-h | --help)
  update_database.py --version

Options:
  -h, --help                Show this screen.
  --version                 Show version.
  -f, --file <path-to-csv>  Path to the CSV file.
  -t, --table <table>       Name of the database table to import the data into.
  -r, --region <region>     Name of the region of this data.
  -p, --purge               Purge the database before import the CSV.
  -d, --drop                Drop the database table before import the CSV.
"""


import datetime
import csv
import sys
import os
import traceback
import psycopg2
from docopt import docopt
from dotenv import load_dotenv, find_dotenv

print("NODE_ENV", os.getenv('NODE_ENV'))
if os.getenv('NODE_ENV'):
    load_dotenv(f".env.{os.getenv('NODE_ENV')}")
else:
    load_dotenv(find_dotenv())

arguments = docopt(__doc__, version='Update database with CSV file 1.0')
if not arguments['--table'] in ('calendar', 'station'):
    raise ValueError("--table must be either 'calendar' or 'station'")

if not os.path.exists(arguments['--file']):
    raise FileNotFoundError(f"--file must be an existing file, {arguments['--file']} not found")


def create_table(cur, table, drop=False, purge=False):
    if drop:
        cur.execute(f"DROP TABLE IF EXISTS {table};")

    if table == 'calendar':
        query = f"""
        CREATE TABLE IF NOT EXISTS {table} (
            region text,
            zip text,
            area text,
            station text,
            waste_type text,
            col_date timestamptz,
            description text,
            PRIMARY KEY (region, area, waste_type, col_date)
        );
        """
        cur.execute(query)

        cur.execute(f"CREATE INDEX IF NOT EXISTS idx_region on calendar(region);")
        cur.execute(f"CREATE INDEX IF NOT EXISTS idx_waste_type on calendar(waste_type);")

    elif table == 'station':
        query = f"""
        CREATE TABLE IF NOT EXISTS {table} (
            region text,
            zip text,
            name text,
            oil boolean,
            metal boolean,
            glass boolean,
            textile boolean,
            description text,
            PRIMARY KEY (region, name)
        );
        """
        cur.execute(query)

        cur.execute(f"CREATE INDEX IF NOT EXISTS idx_station_region on station(region);")

    if purge:
        cur.execute(f"TRUNCATE {table};")


def load_csv(cur, path, table):
    print(f"Load csv file {path} to {table}")
    tmp_table = f"""
        CREATE TEMP TABLE tmp_table 
        ON COMMIT DROP
        AS
        SELECT * 
        FROM {table}
        WITH NO DATA;
    """
    cur.execute(tmp_table)

    with open(path, 'r') as f:
        copy_sql = f"""
            COPY tmp_table FROM STDIN WITH
            CSV
            HEADER
            DELIMITER AS ','
            QUOTE '"'
        """
        cur.copy_expert(sql=copy_sql, file=f)

    
    if table == 'calendar':
        insert_sql = f"""
            INSERT INTO calendar
            SELECT DISTINCT ON (region, area, waste_type, col_date) *
            FROM tmp_table
        """
    elif table == 'station':
        insert_sql = f"""
            INSERT INTO station
            SELECT DISTINCT ON (region, name) *
            FROM tmp_table
        """
    cur.execute(insert_sql)


def cleanup_table(cur, table, region):
    cleanup_sql = f"DELETE from {table} where region = '{region}'"
    cur.execute(cleanup_sql)


def reindex(cur, table):
    if table == 'calendar':
        cur.execute("REINDEX INDEX idx_region;")
        cur.execute("REINDEX INDEX idx_waste_type;")
    elif table == 'station':
        cur.execute("REINDEX INDEX idx_station_region;")


try:
    DB_URL = os.getenv('DATABASE_URL')
    if not DB_URL:
        raise Exception("DATABASE_URL not provided")
    print("Import database")
    
    # read database connection url from the enivron variable we just set.
    conn = None
    try:
        conn = psycopg2.connect(DB_URL)
        cur = conn.cursor()

        # print database info
        print('PostgreSQL database version:')
        cur.execute('SELECT version()')
        db_version = cur.fetchone()
        print(db_version)

        # create table
        create_table(cur, arguments['--table'], purge=arguments['--purge'], drop=arguments['--drop'])

        # delete existing entries
        cleanup_table(cur, arguments['--table'], arguments['--region'])

        # load csvs in temp table
        load_csv(cur, arguments['--file'], arguments['--table'])

        # commit changes
        conn.commit()

        # reindex both indices
        reindex(cur, arguments['--table'])
        
        cur.close()
    finally:
        # close the communication with the database server by calling the close()
        if conn is not None:
            conn.close()
            print('Database connection closed.')
except Exception as e:
    print("Error: %s" % e, file=sys.stderr)
    print(traceback.format_exc(), file=sys.stderr)
    sys.exit(1)
