# Change Log
All notable changes to this project will be documented in this file.

## [Unreleased][unreleased]
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
