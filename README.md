[![Build Status](https://github.com/metaodi/openerz/workflows/Build%20OpenERZ/badge.svg)](https://github.com/metaodi/openerz/actions?query=workflow%3A%22Build+OpenERZ%22)

**Access the public API here: [https://openerz.metaodi.ch](https://openerz.metaodi.ch)**

**Anleitung für OpenERZ auf Deutsch: [https://metaodi.ch/openerz/](https://metaodi.ch/openerz/)**

Usage examples
==============

Get all **organic** waste collections in **Wollishofen** (zip code 8038) as **JSON** sorted by descending **date**:

```
https://openerz.metaodi.ch/api/calendar.json?zip=8038&types=organic&sort=date:desc&offset=0&limit=0&lang=de
```

Get all **cardboard** and **paper** collection date as **iCal** calendar (.ics) for **Thalwil** (zip code 8800) for **area B**:

```
https://openerz.metaodi.ch/api/calendar.ics?zip=8800&area=b&types=cardboard&types=paper&sort=date&offset=0&limit=0&lang=de
```

Get all waste collections for **bulky goods** and **incombustibles** in **Basel (area F)** as **JSON** sorted by ascending **date**:

```
https://openerz.metaodi.ch/api/calendar.json?region=basel&area=f&types=bulky_goods&types=incombustibles&sort=date
```

Installation
============

If you want to run openerz yourself, here is how to set it up:

1. Clone this repository: `git clone git@github.com:metaodi/openerz.git`
1. Run `npm install`
1. Run `npm start`

Then open http://localhost:8080/doc (or whatever port you specified in your PORT env variable)

Testing
=======

```bash
npm test
```

Update data
===========

Each year, new waste collection data is released. 
Update the CSVs in the `csv` directory by replacing the data or running the provided scripts.

OpenERZ uses a PostgreSQL database, which is updated using the `load_data_in_database.sh` script or the corresponding GitHub Action.

Most regions are updated using Python scripts.
You might want to setup a python virtualenv using the `python_setup.sh` script.

Add a new municipality
======================

If you want to add a new municipality to OpenERZ, you need to create a new directory in the [`csv` folder](https://github.com/metaodi/openerz/tree/main/csv) and a config file in the [`config/regions` folder](https://github.com/metaodi/openerz/tree/main/config/regions).

Then you either create a python script or fill out the config file to generate the CSV needed for the import in the database.

The details of the CSVs are described in the [README of the `csv` folder](https://github.com/metaodi/openerz/blob/main/csv/README.md).

Apart from the config file:
* Update the documentation in `docs/README.md`
* Update the documentation in `csv/README.md`.
* Add the correct entries in `.gitignore` (e.g. if you provide a static station CSV file)
* Update the municipality count and list in `test/test.api.js`


## Generate the CSVs

### Python script

A python script is the easiest way to get and convert the data for a municipality.
It assumes that the data is available somewhere for download (e.g. as a CSV on an open data portal, or as a .ics on a municipality website).

There are plenty of examples of these scripts: [zurich.py](https://github.com/metaodi/openerz/blob/main/csv/zurich/zurich.py), [uster.py](https://github.com/metaodi/openerz/blob/main/csv/uster/uster.py), [basel.py](https://github.com/metaodi/openerz/blob/main/csv/basel/basel.py), [zimmerberg.py](https://github.com/metaodi/openerz/blob/main/csv/zimmerberg/zimmerberg.py).

### Config file

If no such data is available, it's probably best to create a config file for a municipality containing the "rules" to generate the calendar.

This contains information about what kind of waste collection is available, and on what schedule (e.g. "every first Saturday of the month", or "weekly every Friday").

Based on these rules the script [`generate_from_config.py`](https://github.com/metaodi/openerz/blob/main/csv/generate_from_config.py) is able to create a calendar CSV for the database import.

The config file is written in YAML and has this structure, use the `validate_config.py` script to validate the contents of all config files.

**Example:**

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


There is an [`example.yml`](https://github.com/metaodi/openerz/blob/main/config/example.yml) as a reference.

If you use a python script to generate the CSV (i.e. if there is an official data source), then a minimal config file would look like this:

```yaml
region: zurich
start_date: 2023-01-01
end_date: 2024-12-31

collections:
  cardboard: ~
  cargotram: ~
  etram: ~
  metal: ~
  organic: ~
  paper: ~
  special: ~
  textile: ~
  waste: ~
```

This makes sure that an endpoint for the region (`zurich`) is generated and which types of collections this endpoint provides.



Release
=======

To create a new release follow these steps:

1. Update the version number in `package.json`
1. Run `npm install` to update `package-lock.json`
1. Update the `CHANGELOG.md`
1. Create a [new release/tag on GitHub](https://github.com/metaodi/openerz/releases)

The new release on GitHub triggers a deployment of the application to heroku (https://openerz.metaodi.ch).

Credits
=======

The logo was created by sagit milshtein from the Noun Project (CC-BY 3.0)

<img src="https://openerz.metaodi.ch/static/logo.png" alt="OpenERZ-Logo" width="90"/>
