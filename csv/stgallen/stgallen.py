import requests
import csv
from io import StringIO

# Abfuhrtermine
CSV_URL = "https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
r = requests.get(CSV_URL)
with open('stgallen.csv', 'wb') as f:
    for chunk in r.iter_content(1024):
        f.write(chunk)

# Recyclingstationen
CSV_URL = "https://daten.stadt.sg.ch/explore/dataset/sammelstellen@stadt-stgallen/download/?format=csv&timezone=Europe/Zurich&lang=de&use_labels_for_header=false&csv_separator=%2C"
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

with open('sammelstationen.csv', 'w') as f:
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
        waste_types = [a.strip() for a in row['abfallarten'].split(';')]
        new_row = {
            'PLZ': '',
            'Sammelstelle': row['standort'],
            'Oel': 'X' if 'Altöl' in waste_types else '',
            'Glas': 'X' if 'Glas' in waste_types else '',
            'Metall': 'X' if any(x in waste_types for x in ['Dosen', 'Altmetall', 'Aluminium']) else '',
            'Textil': 'X' if 'Alttextilien' in waste_types else '', 
        }
        print(new_row)
        writer.writerow(new_row)

