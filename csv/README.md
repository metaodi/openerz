# Data Sources

The data is either downloaded and converted (typically using a Python script) or generated from a config file.

There are two entities needed for each municipality:

- `calendar` file containing the dates of the different kinds of waste collection, basis of the `/api/calendar` endpoints
- `station` file containing all the waste collection stations, this is the basis of the `/api/stations` endpoint

## Format

### Calendar

The calendar must be available as CSV with the following structure to ensure the seamless import in the database:

1. `region`, region/municipality of the waste collection
    - `zurich`
    - `stgallen`
    - `basel`
    - `thalwil`
    - `adliswil`
    - `horgen`
    - `kilchberg`
    - `langnau`
    - `oberrieden`
    - `richterswil`
    - `rueschlikon`
    - `thalwil`
    - `waedenswil`
    - `uster`
    - `wangen-bruttisellen`
    - `duebendorf`
2. `zip`, sometimes a zip code is given
    - `8038`
3. `area`, an area within a region that has the same schedule, this could be a street, a part of town etc.
    - `A`, `B`, `C`
    - leave empty (`""`) if this is not applicable
4. `station`, if the collection only happens at a specific station
    - This is for special cases like the CargoTran
    - Leave empty if unsure
5. `waste_type`, the type of waste collection
    - `bulky_goods`
    - `cardboard`
    - `cargotram`
    - `chipping_service`
    - `etram`
    - `incombustibles`
    - `metal`
    - `organic`
    - `paper`
    - `special`
    - `textile`
    - `waste`
6. `col_date`, date of the collection
    - ISO 8601 date, YYYY-MM-DD

### Station

The collection stations must be available as CSV with the following structure:

1. `region`
    - `zurich`
    - `stgallen`
    - `basel`
    - `thalwil`
    - `adliswil`
    - `horgen`
    - `kilchberg`
    - `langnau`
    - `oberrieden`
    - `richterswil`
    - `rueschlikon`
    - `thalwil`
    - `waedenswil`
    - `uster`
    - `wangen-bruttisellen`
    - `duebendorf`
2. `zip`, zip code where the station is located
    - `8815`
3. `name`
    - name of the station + address if necessary
4. `oil`
    - `true`
    - `false`
5. `metal`
    - `true`
    - `false`
6. `glass`
    - `true`
    - `false`
7. `textile`
    - `true`
    - `false`

## Generate the CSVs

### Python script

A python script is the easiest way to get and convert the data for a municipality.
It assumes that the data is available somewhere for download (e.g. as a CSV on an open data portal, or as a .ics on a municipality website).

There are plenty of examples of these scripts: zurich, uster, basel, zimmerberg.

### Config file

If no such data is available, it's probably best to create a config file for a municipality containing the "rules" to generate the calendar.

This contains information about what kind of waste collection is available, and on what schedule (e.g. "every first Saturday of the month", or "weekly every Friday").

Based on these rules the script [`generate_from_config.py`](https://github.com/metaodi/openerz/blob/main/csv/generate_from_config.py) is able to create a calendar CSV for the database import.

The config file is written in YAML and has this structure:

```yaml
region: <name>
zip: <zip>

collections:
  waste:
    - area: a
      schedule:
        - weekly every Friday
        - 2024-03-27 # Ersatzdatum für Karfreitag 
      exclude: ~
    - area: b
      schedule:
        - weekly every Thurday
        - 2024-05-08 # Ersatzdatum für Auffahrt
      exclude: ~
  
  organic:
    - schedule:
        - every 2nd and 4th Monday in Jan
        - every 1st and 3rd Monday in Feb
        - weekly every Monday from March until December
        - every 2nd and 4th Monday in Dec
        - 2024-04-03 # Ersatzdatum für Ostermontag
        - 2024-05-22 # Ersatzdatum für Pfingsmontag
      exclude: ~

  paper:
    - schedule:
        - every first Saturday of the month

  cardboard:
    - area: a
      schedule:
        - every first Wednesday of the month
        - 2024-05-06 # Ersatzdatum für 1. Mai
    - area: b
      schedule:
        - every 2nd Wednesday of the month

exclude:
  - 2024-01-01 # Neujahr
  - 2024-01-02 # Berchtoldstag
  - 2024-03-29 # Karfreitag
  - 2024-04-01 # Ostermontag
  - 2024-05-01 # 1. Mai
  - 2024-05-09 # Auffahrt
  - 2024-05-20 # Pfingstmontag
  - 2024-08-01 # 1. August
  - 2024-12-25 # Weihnachten
  - 2024-12-26 # Stephanstag
```


There is an [`example.yml`](https://github.com/metaodi/openerz/blob/main/csv/example.yml) as a reference.


## Municipalities

### Zurich

The source files of the City of Zurich are [published on their Open Data Portal](https://data.stadt-zuerich.ch/dataset?tags=entsorgung).
The files from the City of Zurich are appended to the corresponding CSV.

Use `zurich.py` to download the data.

## Basel

The source file of Basel are published in their [Open Data Portal](https://data.bs.ch/explore/dataset/100096/).
The file from Basel is append to the corresponding CSV.

You can use `basel.py` to download the latest version.

## St. Gallen

The source file of St. Gallen ist publihsed on their [Open Data Portal](https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/).

Use `stgallen.py` to download the latest version

## District Horgen

All municipalities in the district of Horgen are using the same web application to publish the waste collection calendar.
Therefore a single script called `zimmerberg.py` can be used to download the files of the following municipalities:

- Adliswil
- Horgen
- Kilchberg
- Langnau
- Oberrieden
- Richterswil
- Rüschlikon
- Thalwil
- Wädenswil

## Uster

Uster publishes part of their waste calendar as ICS file, but normal waste and organic have a simple rule (weekly on weekday X in area Z).
Therefore all dates must be checked for holidays.

This requires some manual work.
The script to generate the CSV is `uster.py`%

## Wangen-Brüttisellen

Wangen-Brüttisellen doesnt expose any machine readable format therefor the CSV are created manually.
The information is taken from the [municipality website](https://www.wangen-bruettisellen.ch/de/verwaltung/abfall)

## Dübendorf

Dübendorf publishes it's calendar as [iCal/ICS file on their website](https://www.duebendorf.ch/dienstleistungen/97555) (one for each area).
The stations are [published](https://www.duebendorf.ch/abfallorte) as well.

