# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project follows [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]

## 4.2.1 - 2021-01-31
### Fixed
- Thalwil had to postpone the metal collection from 2021-01-28 to 2021-02-25

## 4.2.0 - 2021-01-01
### Added
- New data for 2021 for Zurich and Thalwil

### Changed
- Use single csv file per type and place
- Refactor old CSVs in new file to simplify code
- Updated some dependencies

## 4.1.0 - 2020-11-10
### Changed
- Redirect to HTTPS on heroku

### Added
- SSL certificate for openerz.metaodi.ch to enable HTTPS

## 4.0.0 - 2020-11-08
### Changed
- BC-break: minimum node version >= 12.0.0
- Updated all dependencies
- BC-break: all zip codes using the `tour` parameter now *must* provide the `Tour` field in all CSVs
- Switched from Travis CI to GitHub Actions to test and deploy OpenERZ

### Added
- Use the taffydb in-memory database to serve the data

### Removed
- BC-break; Removed Dockerfile
- BC-break: Removed need for MongoDB as a database backend

## 3.0.1 - 2019-12-17
### Fixed
- Travis deployment only on one node version


## 3.0.0 - 2019-12-17
### Added
- Data from 2020

### Changed
- Updated all dependencies
- BC-break: minimum node version >= 10.0.0

### Removed
- Removed all `/export` routes, since they are out-of-date and do not provide more data

## 2.0.0 - 2019-02-02
### Added
- `/api/tramstops` and `/api/wastebins` endpoints now support the `limit` and `offset` parameters (to enable pagination) 

### Changed
- BC-Break: all /api routes returning JSON will return it using a top-level object with a `_metadata` and a `result` key, previously `/api/wastebins`, `/api/tramstops` did not follow that notation.
- Migrate to hapi v17/v18, therefore change everything to async/await
- Migrate code style check from JSHint/JSCS to eslint
- To run openerz, node >= 8.0.0 is required

## 1.2.1 - 2019-01-07
### Added
- Add a custom domain for OpenERZ, it's now available at http://openerz.metaodi.ch. The old domain http://openerz.herokuapp.com still works, but it's recommended to use the new custom domain

## 1.2.0 - 2018-12-30
### Added
- New data for 2019 from Zurich and Thalwil

## 1.1.1 - 2018-06-12
### Fixed
- Fixed unit tests

## 1.1.0 - 2018-06-12
### Added
- Waste collection data of Thalwil
- New parameter `tour`, to distingish different waste collections in the same zip code (e.g. tour A in zip 8800 covers only a certain area in Thalwil)

## 1.0.0 - 2017-12-22
### Changed
- Updated a lot of npm dependencies
- BC-break: on the /api/calendar route the paramter `types[]` is no longer allowed, instead use `types` (and repeat this paramter as much as you need)
- BC-break: the documentation lives now at /documentation instead of /doc (but don't worry, there is a redirect)
- BC-break: minimum node version >= 6.11.0

### Added
- New data for 2018 (yay!)

## 0.13.0 - 2017-07-13
### Changed
- Updated node version needed to run OpenERZ to >=4.8.4
- Special format for 2017 calendar entries

### Removed
- Bulk update functionality in loadData.js script

## 0.12.1 - 2016-12-09
### Changed
- Update mongojs package to fix heroku deployment

## 0.12.0 - 2016-12-09
### Changed
- BC-break: /api/tram_stops is now called /api/tramstops to be more consistent with the naming

### Added
- New CSV with data for 2017
- New route /api/wastebins to get all public waste bins of the City of Zurich
- New field `pickup` for /api/station, which indications when this station is being emptied by ERZ

## 0.11.1 - 2016-01-03
### Fixed
- Parse all dates as UTC to avoid timezone conversion errors
- Use hapi-swagger 2.0.0, where the optional path parameter {format?} works as expected ([#32](https://github.com/metaodi/openerz/issues/32), thanks [Daniel Schregenberger](https://github.com/SuperBFG7))

## 0.11.0 - 2016-01-03
### Changed
- The /api/calendar API now returns dates in YYYY-MM-DD format, the time part is removed (BC break!)

### Fixed
- Correct date in ICS files ([#31](https://github.com/metaodi/openerz/issues/31), thanks [Daniel Schregenberger](https://github.com/SuperBFG7))

## 0.10.0 - 2015-12-17
### Changed
- Updated lib dependencies (hapi, joi, hapi-swagger)
- node >= 4.0.0 is required

### Added
- New `types` parameter for calendar route to request only specific types of waste
- New initServer() method to handle the server initalization in tests

## 0.9.4 - 2015-12-02
### Added
- Add format parameter to /api/stations to be consistent (only JSON allowed)

## 0.9.3 - 2015-12-01
### Changed
- Use the bulk-update functionality of mongojs to import entries

## 0.9.2 - 2015-12-01
### Changed
- Use node 0.12.7

## 0.9.1 - 2015-12-01
### Added
- New CSV with data for 2016
- Description in README for loading data

### Changed
- Added possibility to configure CSV delimiter, as the new CSV do not use semicolon (;) anymore, but a simple comma (,)


## 0.9.0 - 2015-08-07
### Changed
- BC-break: /calendar and /station now return results and metadata as a single object JSON

## 0.8.1 - 2015-08-03
### Fixed
- Version number in package.json

## 0.8.0 - 2015-08-03
### Added
- Added new parameter `offset` for pagination to calendar and station routes

### Changed
- Updated moment-timezone to get rid of deprecation warning
- Use container-based infrastructure on Travis CI

## 0.7.6 - 2015-08-03
### Changed
- Updated year of license

## 0.7.5 - 2015-05-18
### Changed
- Update dependency 'fanci' to 0.5.0
- Change preset of JSCS and fix linting errors

## 0.7.4 - 2015-01-12
### Changed
- Validation of `lang` parameter with fixed value list
- Refactoring of geo-specific code
- Simplify content negotiation code

## 0.7.3 - 2015-01-11
### Fixed
- Default locale is set if there is no explicit `lang` param

## 0.7.2 - 2015-01-11
### Added
- New translations
- New calendar properties (name, timezone, description)
- Set location property on events if applicable

## 0.7.1 - 2015-01-09
### Added
- New translations
- Description for calendar events

### Changed
- Re-use the calendar route config for the calendar output

## 0.7.0 - 2015-01-09
### Added
- Added format parameter to the calendar routes
- iCal/ICS support to output a calendar instead of JSON
- Translations with the new `lang` parameter to output calendar data in German and English

## 0.6.0 - 2014-12-30
### Changed
- Upgraded to fanci 0.4.0 to use the new `transform` function in lib/format.js

## 0.5.0 - 2014-12-23
### Added
- Gulp as a task manger
- JSHint and JSCS to check the JavaScript code

### Fixed
- Linting errors

## 0.4.2 - 2014-12-23
### Fixed
- Typo in apis.json, which caused API.io to reject the content

## 0.4.1 - 2014-12-23
### Fixed
- Typo in apis.json, which caused the file not to render correctly as JSON

## 0.4.0 - 2014-12-23
### Added
- Added apis.json discovery file to describe the API
- The routes /api and /export show their resp. part of the API doc only

## 0.3.0 - 2014-12-21
### Changed
- /api/tram_stops returns a 'custom' JSON if the client accept application/json, otherwise HTTP 406 Not Acceptable

### Added
- The /api/tram_stops route respects the Accept header to serve the GeoJSON with Content-Type application/vnd.geo+json

## 0.2.0 - 2014-12-20
### Changed
- Renamed /api/textiles to /api/textile to be consistent
- The routes are now added in a hapi plugin to ensure they are all set when starting the server
- Refactoring of loadData script to reduce duplicate code
- Renamed `tram_station` parameter to `station`

### Added
- New data for year 2015!
- Tests for the whole public API to ensure it does not break entiertly
- Upgrade to Hapi 8.0.0 and hapi-swagger 0.6.0
- Added /api/tram_stops to serve the GeoJSON of all Cargo and E-Tram stops
- Added `limit` parameter to be able to limit the amount of records returned by the API

## 0.1.0 - 2014-12-17
### Added
- Add metadata about the API

### Changed
- Upgrade to Hapi 7.5 and Joi 5.0
- Upgrade of hapi-swagger to 0.5.2.pr91 (on my own fork)

## 0.0.4 - 2014-12-16
### Added
- New route /export/metadata to fully support the ERZ app

## 0.0.3 - 2014-12-15
### Added
- Redirect to API docs for all routes that do not match otherwise (catch-all)

### Changed
- `start` and `end` params must be dates, added Joi validation to check
- Return all dates with timezone of Zurich to avoid confusing of output
 

## 0.0.2 - 2014-12-15
### Added
- Use `fanci` to rename JSON output

### Changed
- Load data from CSV in MongoDB
- Change datasource from CSV to MongoDB

## 0.0.1 - 2014-12-11
### Added
- Generate routes from CSV
- Generate routes based on app metadata.json (/export/...)
- Basic test and build setup


# Categories
- `Added` for new features.
- `Changed` for changes in existing functionality.
- `Deprecated` for once-stable features removed in upcoming releases.
- `Removed` for deprecated features removed in this release.
- `Fixed` for any bug fixes.
- `Security` to invite users to upgrade in case of vulnerabilities.
