import requests
import csv
from io import StringIO

# Abfuhrtermine
CSV_URL = "https://data.bs.ch/explore/dataset/100096/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
r = requests.get(CSV_URL)
reader = csv.DictReader(StringIO(r.text), delimiter=',')

header = [
    'termin',
    'wochentag',
    'art',
    'zone',
    'dayofweek',
]

with open('basel.csv', 'w') as f:
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
        del row['geo_shape']
        del row['geo_point_2d']
        writer.writerow(row)

# Recyclingstationen
CSV_URL = "https://data.bs.ch/explore/dataset/100027/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
r = requests.get(CSV_URL)
reader = csv.DictReader(StringIO(r.text), delimiter=',')

header = [
    'PLZ',
    'Sammelstelle',
    'Oel',
    'Glas',
    'Metall',
    'Textil'
]

with open('basel_stationen.csv', 'w') as f:
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
        new_row = {
            'PLZ': row['plz'],
            'Sammelstelle': row['adresse'],
            'Oel': '',
            'Glas': 'X',
            'Metall': 'X',
            'Textil': '',
        }
        writer.writerow(new_row)

