Source Files
============

# Municipalities

## Zurich

The source files of the City of Zurich are [published on their Open Data Portal](https://data.stadt-zuerich.ch/dataset?tags=entsorgung).
The files from the City of Zurich are appended to the corresponding CSV.

## Thalwil

Thalwil does not yet publish machine-readable data, but there is a PDF (see e.g. the 2018 version).
For some waste types, the dates are not given, but rather an algorithm (e.g. organic waste is collected weekly on Wednesday from January to November, in December only on the 5.12. and the 19.12.2018).
Therefore there are scripts for those files:

```
node thalwil_waste.js > thalwil_kehricht_2018.csv
node thalwil_organic.js > thalwil_bioabfall_2018.csv
```

## Basel

The source file of Basel are published in their [Open Data Portal](https://data.bs.ch/explore/dataset/100096/).
The file from Basel is append to the corresponding CSV.

You can use `basel.py` to download the latest version.

## St. Gallen

The source file of St. Gallen ist publihsed on their [Open Data Portal](https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/).

Use `stgallen.py` to download the latest version


# Format

## Calendar

The calendar must be available as CSV with the following structure to ensure the seamless import in the database:

1. `region`, region/municipality of the waste collection
    - zurich
    - stgallen
    - basel
    - thalwil
2. `area`, an area within a region that has the same schedule, this could be a street, a part of town etc.
    - `A`, `B`, `C`
3. `zip`, sometimes a zip code is given
    - `8038`
4. `date`, date of the collection
    - ISO 8601 date, YYYY-MM-DD
5. `type`, the type of waste collection
    - `paper`
    - `cardboard`
    - `waste`

## Station

The collection stations must be available as CSV with the following structure:

1. region
2. zip
3. name
4. oil
5. metal
6. glass
7. textile
