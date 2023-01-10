# Source Files

## Zurich

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

# Format

## Calendar

The calendar must be available as CSV with the following structure to ensure the seamless import in the database:

1. `region`, region/municipality of the waste collection
    - zurich
    - stgallen
    - basel
    - thalwil
    - adliswil
    - horgen
    - kilchberg
    - langnau
    - oberrieden
    - richterswil
    - rueschlikon
    - thalwil
    - waedenswil
    - uster
2. `area`, an area within a region that has the same schedule, this could be a street, a part of town etc.
    - `A`, `B`, `C`
3. `zip`, sometimes a zip code is given
    - `8038`
4. `station`, if the collection only happens at a specific station
    - This is for speczal cases like the CargoTran
    - Leave empty if unsure
5. `col_date`, date of the collection
    - ISO 8601 date, YYYY-MM-DD
6. `waste_type`, the type of waste collection
    - 'bulky_goods`
    - `cardboard`
    - `cargotram`
    - `chipping_service`
    - `etram`
    - `incombustibles`
    - `metal'
    - `organic`
    - `paper`
    - `special`
    - `textile`
    - `waste`

## Station

The collection stations must be available as CSV with the following structure:

1. `region`
    - zurich
    - stgallen
    - basel
    - thalwil
    - adliswil
    - horgen
    - kilchberg
    - langnau
    - oberrieden
    - richterswil
    - rueschlikon
    - thalwil
    - waedenswil
    - uster
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
