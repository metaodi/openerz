# Change Log
All notable changes to this project will be documented in this file.

## [Unreleased][unreleased]
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

## [0.1.0] - 2014-12-17
### Added
- Add metadata about the API

### Changed
- Upgrade to Hapi 7.5 and Joi 5.0
- Upgrade of hapi-swagger to 0.5.2.pr91 (on my own fork)

## [0.0.4] - 2014-12-16
### Added
- New route /export/metadata to fully support the ERZ app

## [0.0.3] - 2014-12-15
### Added
- Redirect to API docs for all routes that do not match otherwise (catch-all)

### Changed
- `start` and `end` params must be dates, added Joi validation to check
- Return all dates with timezone of Zurich to avoid confusing of output
 

## [0.0.2] - 2014-12-15
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
