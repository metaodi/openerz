[![Build Status](https://github.com/metaodi/openerz/workflows/Build%20OpenERZ/badge.svg)](https://github.com/metaodi/openerz/actions?query=workflow%3A%22Build+OpenERZ%22)

**Access the public API here: https://openerz.metaodi.ch**

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
Update the CSVs in the `csv` directory by appending the new data to the corresponding file.

OpenERZ uses an in-memory database, which is initialized at startup based on the CSV files in the repository.

Release
=======

To create a new release follow these steps:

1. Update the version number in `package.json`
1. Update the `CHANGELOG.md`
1. Create a [new release/tag on GitHub](https://github.com/metaodi/openerz/releases)

The new release on GitHub triggers a deployment of the application to heroku (https://openerz.metaodi.ch).

Credits
=======

The logo was created by sagit milshtein from the Noun Project (CC-BY 3.0)

<img src="https://openerz.metaodi.ch/static/logo.png" alt="OpenERZ-Logo" width="90"/>
