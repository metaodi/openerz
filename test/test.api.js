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

    describe('/api/stations API with region parameter', function() {
        it('should return entry for zurich', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=zurich'
            });
            response.statusCode.should.equal(200);
            response.result.result[0].should.deepEqual({
                zip: 8003,
                name: 'Aegertenstrasse vis-à-vis 16',
                kind: { oil: false, metal: true, glass: true, textile: true },
                region: 'zurich'
                     
            });
        });
        it('should return entry for basel', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=basel'
            });
            response.statusCode.should.equal(200);
            response.result.result[0].should.deepEqual({
                zip: 4125,
                name: 'Bahnhofstrasse',
                kind: { oil: false, metal: true, glass: true, textile: false },
                region: 'basel'
                     
            });
        });
        it('should return entry for stgallen', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=stgallen'
            });
            response.statusCode.should.equal(200);
            response.result.result[0].should.deepEqual({
                zip: '',
                name: 'Ahornstrasse',
                kind: { oil: false, metal: true, glass: true, textile: true },
                region: 'stgallen'
                     
            });
        });
        it('should return entry for thalwil', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=thalwil'
            });
            response.statusCode.should.equal(200);
            response.result.result[0].should.deepEqual({
                zip: 8800,
                name: 'Alter Schiessstand, Dorfstrasse 71',
                kind: { oil: true, metal: true, glass: true, textile: true },
                region: 'thalwil'
                     
            });
        });
    });

    describe('/api/parameter/regions is working', function() {
        it('should return the correct parameters', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/regions'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(16);
            response.result.result.length.should.equal(16);
            response.result.result.should.deepEqual([
                'adliswil',
                'basel',
                'bassersdorf',
                'duebendorf',
                'horgen',
                'kilchberg',
                'langnau',
                'oberrieden',
                'richterswil',
                'rueschlikon',
                'stgallen',
                'thalwil',
                'uster',
                'waedenswil',
                'wangen-bruttisellen',
                'zurich'
            ]);
        });
    });

    describe('/api/parameter/types is working', function() {
        it('should return the correct parameter', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/types'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(12);
            response.result.result.length.should.equal(12);
            response.result.result.should.deepEqual([
                'bulky_goods',
                'cardboard',
                'cargotram',
                'chipping_service',
                'etram',
                'incombustibles',
                'metal',
                'organic',
                'paper',
                'special',
                'textile',
                'waste'
            ]);
        });
        it('should return the correct parameter with region basel', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/types?region=basel'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(7);
            response.result.result.length.should.equal(7);
            response.result.result.should.deepEqual([
                'bulky_goods',
                'chipping_service',
                'incombustibles',
                'metal',
                'organic',
                'paper',
                'waste'
            ]);
        });
        it('should return the correct parameter with region thalwil', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/types?region=thalwil'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(7);
            response.result.result.length.should.equal(7);
            response.result.result.should.deepEqual([
                'cardboard',
                'incombustibles',
                'metal',
                'organic',
                'paper',
                'special',
                'waste',
            ]);
        });
        it('should return an error with incorrect region', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/types?region=xyz'
            });
            response.statusCode.should.equal(400);
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
                url: '/api/calendar.json?types=paper&types=cardboard&zip=8038&lang=de&start=2023-01-01&end=2023-01-16&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 2, 'row_count': 2},
                'result': [{
                    'date': '2023-01-09',
                    'region': 'zurich',
                    'zip': 8038,
                    'area': '8038',
                    'type': 'paper',
                    'station': ''
                },
                {
                    'date': '2023-01-16',
                    'region': 'zurich',
                    'zip': 8038,
                    'area': '8038',
                    'type': 'cardboard',
                    'station': ''
                }]
            });
        });
    });

    describe('/api/calendar.json API with region parameter', function() {
        it('should return entry for zurich with area=8038', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=zurich&types=paper&area=8038&lang=de&start=2023-01-01&end=2023-12-31&limit=1&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 23, 'row_count': 1},
                'result': [{
                    'date': '2023-01-09',
                    'region': 'zurich',
                    'zip': 8038,
                    'area': '8038',
                    'type': 'paper',
                    'station': ''
                }]
            });
        });
        it('should return entry for thalwil with area=b', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=thalwil&types=cardboard&area=b&lang=de&start=2023-01-01&end=2023-12-31&limit=1&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 12, 'row_count': 1},
                'result': [{
                    'date': '2023-01-12',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'b',
                    'type': 'cardboard',
                    'station': ''
                }]
            });
        });
        it('should return entry for basel with area=e', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=basel&types=waste&area=e&lang=de&start=2023-01-01&end=2023-12-31&limit=1&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 104, 'row_count': 1},
                'result': [{
                    'date': '2023-01-03',
                    'region': 'basel',
                    'area': 'e',
                    'zip': '',
                    'station': '',
                    'type': 'waste'
                }]
            });
        });
        it('should return entry for stgallen with area=f', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=stgallen&types=cardboard&area=f&lang=de&start=2023-01-01&end=2023-12-31&limit=1&sort=date'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 6, 'row_count': 1},
                'result': [{
                    'date': '2023-01-23',
                    'region': 'stgallen',
                    'area': 'f',
                    'zip': '',
                    'station': '',
                    'type': 'cardboard'
                }]
            });
        });
    });

    describe('/api/calendar/cardboard.json with zip and area parameter', function() {
        it('should return a correct entry for 8800', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&area=b&limit=1&sort=date&end=2023-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 12, 'row_count': 1},
                'result': [{
                    'date': '2023-01-12',
                    'zip': 8800,
                    'region': 'thalwil',
                    'area': 'b',
                    'station': '',
                    'type': 'cardboard'
                }]
            });
        });
        it('should return a correct entry for 8800 with uppercase area', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&area=B&limit=1&sort=date&end=2023-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 12, 'row_count': 1},
                'result': [{
                    'date': '2023-01-12',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'b',
                    'station': '',
                    'type': 'cardboard'
                }]
            });
        });
        it('should return a correct entry for 8800 without area parameter', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&limit=1&sort=date&end=2023-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 35, 'row_count': 1},
                'result': [{
                    'date': '2023-01-12',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'b',
                    'station': '',
                    'type': 'cardboard'
                }]
            });
        });
    });

    describe('/api/calendar.json with zip and area parameter', function() {
        it('should return a correct entry for 8800', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&area=a&limit=1&sort=date&end=2023-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 139, 'row_count': 1},
                'result': [{
                    'date': '2023-01-03',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'a',
                    'station': '',
                    'type': 'waste'
                }]
            });
        });
        it('should return a correct entries for 8800 (without and without area)', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&area=a&limit=2&start=2023-06-28&end=2023-06-30&sort=date,area:desc'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 4, 'row_count': 2},
                'result': [{
                    'date': '2023-06-28',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'a',
                    'station': '',
                    'type': 'organic'
                },
                {
                    'date': '2023-06-28',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': '',
                    'station': '',
                    'type': 'special'
                }]
            });
        });
    });

    describe('/api/region/basel/calendar.json API', function() {
        it('should return a correct entry', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/region/basel/calendar.json?area=a&limit=1&sort=date&end=2023-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 803, 'row_count': 1},
                'result': [{
                    'date': '2020-01-02',
                    'region': 'basel',
                    'area': 'a',
                    'type': 'organic',
                    'station': '',
                    'zip': '',
                }]
            });
        });
        it('should return a correct entries for bulky goods', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/region/basel/calendar.json?area=a&limit=1&sort=date&end=2023-12-31&types=bulky_goods'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 66, 'row_count': 1},
                'result': [{
                    'date': '2020-01-15',
                    'region': 'basel',
                    'area': 'a',
                    'type': 'bulky_goods',
                    'zip': '',
                    'station': ''
                }]
            });
        });
        it('should return a correct entries for chipping service', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/region/basel/calendar.json?area=f&limit=1&sort=date&end=2023-12-31&types=chipping_service'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 20, 'row_count': 1},
                'result': [{
                    'date': '2020-02-26',
                    'region': 'basel',
                    'area': 'f',
                    'type': 'chipping_service',
                    'zip': '',
                    'station': ''
                }]
            });
        });
        it('should return a correct entries for incombustibles', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/region/basel/calendar.json?area=f&limit=1&sort=date&end=2023-12-31&types=incombustibles'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 48, 'row_count': 1},
                'result': [{
                    'date': '2020-01-17',
                    'region': 'basel',
                    'area': 'f',
                    'type': 'incombustibles',
                    'zip': '',
                    'station': ''
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
                'SUMMARY:Altpapier\\, PLZ: 8038',
                'LOCATION:PLZ: 8038',
                'DESCRIPTION:Altpapier-Kalender',
                'DTSTART;VALUE=DATE:20230109',
                'DTEND;VALUE=DATE:20230110',
                'END:VEVENT',
                'BEGIN:VEVENT',
                'SUMMARY:Karton\\, PLZ: 8038',
                'LOCATION:PLZ: 8038',
                'DESCRIPTION:Kartonabfuhr-Kalender',
                'DTSTART;VALUE=DATE:20230116',
                'DTEND;VALUE=DATE:20230117',
                'END:VEVENT',
                'END:VCALENDAR'
            ];
            var expectedResult = expectedLines.join('\r\n') + '\r\n';
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.ics?types=paper&types=cardboard&zip=8038&lang=de&start=2023-01-01&end=2023-01-20&sort=date'
            });
            response.payload.should.deepEqual(expectedResult);
        });
    });
});
