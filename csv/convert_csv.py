#!/usr/bin/env python3

# This script convert CSV files from the new to the old structure

import csv
import sys
import traceback
from datetime import datetime
import dateparser

assert len(sys.argv) == 2, "Call script with CSV file as parameter"

try:
    filename = sys.argv[1]
    rows = []
    with open(filename, 'r') as f:
        dr = csv.DictReader(f) 
        for r in dr:
            data = r
            data['PLZ'] = int(data['PLZ'])
            data['Abholdatum'] = dateparser.parse(r['Abholdatum']).date().isoformat()
            rows.append(data)

    writer = csv.DictWriter(
        sys.stdout,
        rows[0].keys(),
        delimiter=',',
        quotechar='"',
        lineterminator='\n',
        quoting=csv.QUOTE_NONNUMERIC
    )
    writer.writeheader()
    writer.writerows(rows)
except Exception as e:
    print("Error: %s" % e, file=sys.stderr)
    print(traceback.format_exc(), file=sys.stderr)
    sys.exit(1)
finally:
    sys.stdout.flush()
