/*global describe it before after*/
// jscs:disable maximumLineLength
'use strict';

var should = require('should'),
    liftOff = require('../lib/server').liftOff;

var server;

describe('make sure the server is running (test.api)', function() {
    before(async function() {
        server = await liftOff();
        await server.initialize();
        console.log('Server initialized');
    });

    describe('/api/stations is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/tramstops is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops'
            });
            response.statusCode.should.equal(200);
            response.result.should.not.be.empty();
        });
    });

    describe('/api/tramstops with Accept header application/vnd.geo+json returns geojson', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops',
                headers: {
                    'Accept': 'application/vnd.geo+json'
                }
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result.features.length.should.equal(11);
            result.name.should.equal('stzh.poi_cargoetram_view');
            result.type.should.equal('FeatureCollection');
        });
    });

    describe('/api/tramstops.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops.json?limit=1'
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result._metadata.total_count.should.equal(11);
            result.result.length.should.equal(1);
            (result['result'][0]).should.deepEqual({
                'name': 'Zürich, Wartau',
                'zip': '8049',
                'city': 'Zürich',
                'website': 'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling/publikationen_broschueren/fahrplan_cargo_tram_und_e_tram.html',
                'coordinates': [8.4916264363, 47.4027635986, 0]
            });
        });
    });
    describe('/api/tramstops.json pagination is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops.json?limit=1&offset=10'
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result.result.length.should.equal(1);
            (result['result'][0]).should.deepEqual({
                'name': 'Zürich, Tramdepot Hard',
                'zip': '8005',
                'city': 'Zürich',
                'website': 'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling/publikationen_broschueren/fahrplan_cargo_tram_und_e_tram.html',
                'coordinates': [
                    8.5197705253,
                    47.3918446254,
                    0
                ]
            });
        });
    });

    describe('/api/tramstops.geojson is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops.geojson'
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result.features.length.should.equal(11);
            result.name.should.equal('stzh.poi_cargoetram_view');
            result.type.should.equal('FeatureCollection');
            (result.features[0]).should.containDeep({
                'type': 'Feature',
                'geometry': {
                    'type': 'Point',
                    'coordinates': [8.4916264363, 47.4027635986, 0]
                },
                'properties': {
                    'name': 'Zürich, Wartau',
                    'ort': 'Zürich',
                    'plz': '8049',
                    'www': 'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling/publikationen_broschueren/fahrplan_cargo_tram_und_e_tram.html'
                } 
            });
        });
    });

    describe('/api/tramstops.geojson with limit is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops.geojson?limit=2'
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result.features.length.should.equal(2);
            result.name.should.equal('stzh.poi_cargoetram_view');
            result.type.should.equal('FeatureCollection');
            (result.features[0]).should.containDeep({
                'type': 'Feature',
                'geometry': {
                    'type': 'Point',
                    'coordinates': [8.4916264363, 47.4027635986, 0]
                },
                'properties': {
                    'name': 'Zürich, Wartau',
                    'ort': 'Zürich',
                    'plz': '8049',
                    'www': 'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling/publikationen_broschueren/fahrplan_cargo_tram_und_e_tram.html'
                } 
            });
        });
    });

    describe('/api/tramstops.test does not work', function() {
        it('should return an error', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/tramstops.test'
            });
            response.statusCode.should.equal(406);
        });
    });

    describe('/api/wastebins is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/wastebins'
            });
            response.statusCode.should.equal(200);
            response.should.not.be.empty();
        });
    });

    describe('/api/wastebins.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/wastebins.json?limit=5'
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result.result.length.should.equal(5);
            result._metadata.total_count.should.equal(4063);
            (result['result'][0]).should.deepEqual({
                'type': 'Zuerikuebel',
                'volume': 'L70',
                'location': 'Haltestelle Bahnhof Tiefenbrunnen',
                'remark': null,
                'coordinates': [
                    8.5609016937,
                    47.350094889
                ]
            });
        });
    });

    describe('/api/wastebins.geojson is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/wastebins.geojson?limit=3'
            });
            response.statusCode.should.equal(200);
            var result = JSON.parse(response.payload);
            result.features.length.should.equal(3);
            result.name.should.equal('erz.abfallgefaess_p');
            result.type.should.equal('FeatureCollection');
            (result.features[0]).should.containDeep({
                'type': 'Feature',
                'geometry': {
                    'type': 'Point',
                    'coordinates': [
                        8.5609016937,
                        47.350094889
                    ]
                },
                'properties': {
                    'bemerkung': null,
                    'ort': 'Haltestelle Bahnhof Tiefenbrunnen',
                    'gefaesstyp_txt': 'Zuerikuebel',
                    'dimension_txt': 'L70'
                }
            });
        });
    });


    describe('/api/calendar is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cardboard is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cardboard.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cardboard.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/paper is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/paper'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/paper.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/paper.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/paper.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/paper.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/waste is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/waste'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/waste.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/waste.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/waste.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/waste.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/special is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/special'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/special.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/special.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/special.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/special.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/organic is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/organic'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/organic.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/organic.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/organic.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/organic.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/textile is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/textile'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/textile.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/textile.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/textile.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/textile.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/etram is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/etram'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/etram.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/etram.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/etram.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/etram.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cargotram is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cargotram.ics is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram.ics'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cargotram.json is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram.json'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar/cargotram.test does not work', function() {
        it('should return an error', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram.test'
            });
            response.statusCode.should.equal(406);
        });
    });

    describe('/api/calendar.json?types=cargotram is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=cargotram'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar.json?types=cargotram&types=etram is working', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=cargotram&types=etram'
            });
            response.statusCode.should.equal(200);
        });
    });

    describe('/api/calendar.json API is returning records', function() {
        it('should return several results', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json'
            });
            response.statusCode.should.equal(200);
            (response.result._metadata.total_count).should.be.above(0);
        });
    });

    describe('/api/calendar.json API is returning a correct entry', function() {
        it('should return something', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=paper&types=cardboard&zip=8038&lang=de&start=2016-01-01&end=2016-01-05&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 1},
                'result': [{
                    'date': '2016-01-04',
                    'zip': 8038,
                    'type': 'cardboard'
                }]
            });
        });
    });

    describe('/api/calendar/cardboard.json with zip and tour parameter', function() {
        it('should return a correct entry for 8800', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&tour=b&limit=1&sort=date&end=2018-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 12},
                'result': [{
                    'date': '2018-01-11',
                    'zip': 8800,
                    'tour': 'b',
                    'type': 'cardboard'
                }]
            });
        });
        it('should return a correct entry for 8800 with uppercase tour', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&tour=B&limit=1&sort=date&end=2018-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 12},
                'result': [{
                    'date': '2018-01-11',
                    'zip': 8800,
                    'tour': 'b',
                    'type': 'cardboard'
                }]
            });
        });
        it('should return a correct entry for 8800 without tour parameter', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&limit=1&sort=date&end=2018-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 36},
                'result': [{
                    'date': '2018-01-04',
                    'zip': 8800,
                    'tour': 'a',
                    'type': 'cardboard'
                }]
            });
        });
    });
    describe('/api/calendar.json with zip and tour parameter', function() {
        it('should return a correct entry for 8800', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&tour=a&limit=1&sort=date&end=2018-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 132},
                'result': [{
                    'date': '2018-01-03',
                    'zip': 8800,
                    'tour': '',
                    'type': 'organic'
                }]
            });
        });
        it('should return a correct entries for 8800 (without and without tour)', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&tour=a&limit=2&start=2018-06-01&end=2018-06-30&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 11},
                'result': [{
                    'date': '2018-06-02',
                    'zip': 8800,
                    'tour': '',
                    'type': 'paper'
                },
                {
                    'date': '2018-06-04',
                    'zip': 8800,
                    'tour': 'a',
                    'type': 'waste'
                }]
            });
        });
    });

    describe('/api/calendar.ics API is returning a correct entry', function() {
        it('should return something', async function() {
            var expectedLines = [
                'BEGIN:VCALENDAR',
                'VERSION:2.0',
                'PRODID:-//metaodi//openerz//EN',
                'NAME:OpenERZ',
                'X-WR-CALNAME:OpenERZ',
                'DESCRIPTION:Entsorungskalender',
                'X-WR-CALDESC:Entsorungskalender',
                'TIMEZONE-ID:Europe/Zurich',
                'TZID:Europe/Zurich',
                'X-WR-TIMEZONE:Europe/Zurich',
                'BEGIN:VEVENT',
                'SUMMARY:Karton\\, PLZ: 8038',
                'LOCATION:PLZ: 8038',
                'DESCRIPTION:Kartonabfuhr-Kalender',
                'DTSTART;VALUE=DATE:20160104',
                'DTEND;VALUE=DATE:20160105',
                'END:VEVENT',
                'END:VCALENDAR'
            ];
            var expectedResult = expectedLines.join('\r\n') + '\r\n';
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.ics?types=paper&types=cardboard&zip=8038&lang=de&start=2016-01-01&end=2016-01-05&sort=date'
            });
            response.payload.should.deepEqual(expectedResult);
        });
    });
});
