import requests
import csv
from io import StringIO

# Abfuhrtermine
CSV_URL = "https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
r = requests.get(CSV_URL)
reader = csv.DictReader(StringIO(r.text), delimiter=',')

header = [
    'termin',
    'wochentag',
    'art',
    'zone',
    'dayofweek',
]

with open('stgallen.csv', 'w') as f:
    writer = csv.DictWriter(
        f,
        header,
        delimiter=',',
        quotechar='"',
        lineterminator='\r\n',
        quoting=csv.QUOTE_MINIMAL
    )
    writer.writeheader()

    for row in reader:
        print(row)
        del row['geo_shape']
        del row['geo_point_2d']
        writer.writerow(row)
