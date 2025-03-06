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
                region: 'zurich',
                description: ''
                     
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
                region: 'basel',
                description: ''
                     
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
                region: 'stgallen',
                description: ''
                     
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
                region: 'thalwil',
                description: ''
                     
            });
        });
        it('should return an error for inexisting region', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=xyz'
            });
            response.statusCode.should.equal(400);
        });
    });

    describe('/api/stations API with sort parameter', function() {
        it('should return entry for thalwil with sort=name:desc', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=thalwil&sort=name:desc'
            });
            response.statusCode.should.equal(200);
            response.result.result[0].should.deepEqual({
                zip: 8800,
                name: 'Tödistrasse, beim Schulhaus Feld',
                kind: { oil: false, metal: true, glass: true, textile: true },
                region: 'thalwil',
                description: ''
                     
            });
        });
        it('should return an error for wrong sort parameter', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/stations?region=thalwil&sort=xyz'
            });
            response.statusCode.should.equal(400);
        });
    });

    describe('/api/parameter/regions is working', function() {
        it('should return the correct parameters', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/regions'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(23);
            response.result.result.length.should.equal(23);
            response.result.result.should.deepEqual([
                'adliswil',
                'basel',
                'bassersdorf',
                'duebendorf',
                'embrach',
                'gossau-zh',
                'hombrechtikon',
                'horgen',
                'kilchberg',
                'langnau',
                'oberrieden',
                'richterswil',
                'rueschlikon',
                'seon',
                'stgallen',
                'thalwil',
                'uster',
                'waedenswil',
                'wangen-bruttisellen',
                'wetzikon',
                'wiesendangen',
                'winterthur',
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
            response.result._metadata.total_count.should.equal(13);
            response.result.result.length.should.equal(13);
            response.result.result.should.deepEqual([
                'bulky_goods',
                'cardboard',
                'cargotram',
                'chipping_service',
                'etram',
                'incombustibles',
                'metal',
                'oekibus',
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
        it('should return the correct parameter with region bassersdorf', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/types?region=bassersdorf'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(6);
            response.result.result.length.should.equal(6);
            response.result.result.should.deepEqual([
                'bulky_goods',
                'oekibus',
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

    describe('/api/parameter/areas is working', function() {
        it('should return the correct parameter', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/areas'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(75);
            response.result.result.length.should.equal(75);
            response.result.result[0].should.deepEqual({
                'region': 'basel',
                'area': 'A'
            });
        });
        it('should return the correct parameter with region thalwil', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/areas?region=thalwil'
            });
            response.statusCode.should.equal(200);
            response.result._metadata.total_count.should.equal(3);
            response.result.result.length.should.equal(3);
            response.result.result.should.deepEqual([
                {'region': 'thalwil', 'area': 'A'},
                {'region': 'thalwil', 'area': 'B'},
                {'region': 'thalwil', 'area': 'C'}
            ]);
        });
        it('should return an error with incorrect region', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/parameter/areas?region=xyz'
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
                    'waste_type': 'paper',
                    'station': '',
                    'description': ''
                },
                {
                    'date': '2023-01-16',
                    'region': 'zurich',
                    'zip': 8038,
                    'area': '8038',
                    'waste_type': 'cardboard',
                    'station': '',
                    'description': ''
                }]
            });
        });
        it('should return an error with incorrect sort parameter', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=paper&types=cardboard&zip=8038&lang=de&start=2023-01-01&end=2023-01-16&sort=xyz'
            });
            response.statusCode.should.equal(400);
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
                    'waste_type': 'paper',
                    'station': '',
                    'description': ''
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
                '_metadata': {'total_count': 2, 'row_count': 1},
                'result': [{
                    'date': '2023-09-14',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'b',
                    'waste_type': 'cardboard',
                    'station': '',
                    'description': ''
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
                    'waste_type': 'waste',
                    'description': ''
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
                '_metadata': {'total_count': 13, 'row_count': 1},
                'result': [{
                    'date': '2023-01-23',
                    'region': 'stgallen',
                    'area': 'f',
                    'zip': '',
                    'station': '',
                    'waste_type': 'cardboard',
                    'description': ''
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
                '_metadata': {'total_count': 11, 'row_count': 1},
                'result': [{
                    'date': '2023-01-03',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'a',
                    'station': '',
                    'waste_type': 'waste',
                    'description': ''
                }]
            });
        });
        it('should return a correct entries for 8800 (with and without area)', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&area=b&limit=2&start=2024-06-25&end=2024-06-25&sort=date,area:desc'
            });
            response.statusCode.should.equal(200);
            response.result.should.deepEqual({
                '_metadata': {'total_count': 2, 'row_count': 2},
                'result': [{
                    'date': '2024-06-25',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': 'b',
                    'station': '',
                    'waste_type': 'waste',
                    'description': ''
                },
                {
                    'date': '2024-06-25',
                    'region': 'thalwil',
                    'zip': 8800,
                    'area': '',
                    'station': '',
                    'waste_type': 'special',
                    'description': ''
                }]
            });
        });
    });
    describe('/api/calendar.json for Bassersdorf (no areas, oekibus)', function() {
        it('should return a correct entry for bassersdorf', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=bassersdorf&limit=100&sort=date,waste_type:desc&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(100);
            response.result._metadata.should.deepEqual({
                'total_count': 218,
                'row_count': 100,
            });
            response.result.result[0].should.deepEqual({
                'date': '2024-01-03',
                'region': 'bassersdorf',
                'zip': 8303,
                'area': '',
                'station': '',
                'waste_type': 'organic',
                'description': ''
            });
        });
        it('should return a correct entry for oekibus bassersdorf', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=bassersdorf&types=oekibus&sort=date&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(50);
            response.result._metadata.should.deepEqual({
                'total_count': 50,
                'row_count': 50,
            });
            response.result.result[1].should.deepEqual({
                'date': '2024-01-10',
                'region': 'bassersdorf',
                'zip': 8303,
                'area': '',
                'station': '',
                'waste_type': 'oekibus',
                'description': 'Ökibus am Morgen'
            });
        });
        it('should return a correct entry for paper bassersdorf', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=bassersdorf&types=paper&sort=date&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(6);
            response.result._metadata.should.deepEqual({
                'total_count': 6,
                'row_count': 6,
            });
            response.result.result[0].should.deepEqual({
                'date': '2024-01-13',
                'region': 'bassersdorf',
                'zip': 8303,
                'area': '',
                'station': '',
                'waste_type': 'paper',
                'description': ''
            });
        });
    });

    describe('/api/calendar.json for Embrach', function() {
        it('should return a correct entry for embrach', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=embrach&sort=date,waste_type&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(368);
            response.result._metadata.should.deepEqual({
                'total_count': 368,
                'row_count': 368,
            });
            response.result.result[0].should.deepEqual({
                'date': '2024-01-03',
                'region': 'embrach',
                'zip': 8424,
                'area': 'ost',
                'station': '',
                'waste_type': 'bulky_goods',
                'description': ''
            });
        });
        it('should return a correct entry for cardboard embrach', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=embrach&sort=date,waste_type&start=2024-01-01&end=2024-12-31&types=cardboard'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(26);
            response.result._metadata.should.deepEqual({
                'total_count': 26,
                'row_count': 26,
            });
            response.result.result[1].should.deepEqual({
                'date': '2024-01-25',
                'region': 'embrach',
                'zip': 8424,
                'area': '',
                'station': '',
                'waste_type': 'cardboard',
                'description': ''
            });
        });
        it('should return a correct entry for organic embrach area=west', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=embrach&types=organic&area=west&sort=date&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(47);
            response.result._metadata.should.deepEqual({
                'total_count': 47,
                'row_count': 47,
            });
            response.result.result[2].should.deepEqual({
                'date': '2024-02-05',
                'region': 'embrach',
                'zip': 8424,
                'area': 'west',
                'station': '',
                'waste_type': 'organic',
                'description': ''
            });
        });
    });

    describe('/api/calendar.json for Dübendorf', function() {
        it('should return a correct entry for duebendorf', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=duebendorf&sort=date,waste_type,area&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(500);
            response.result._metadata.should.deepEqual({
                'total_count': 783,
                'row_count': 500,
            });
            response.result.result[1].should.deepEqual({
                'date': '2024-01-03',
                'region': 'duebendorf',
                'zip': 8600,
                'area': '4',
                'station': '',
                'waste_type': 'organic',
                'description': ''
            });
        });
        it('should return a correct entry for waste duebendorf area=2', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=duebendorf&area=2&sort=date,waste_type&start=2024-01-01&end=2024-12-31&types=waste'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(52);
            response.result._metadata.should.deepEqual({
                'total_count': 52,
                'row_count': 52,
            });
            response.result.result[2].should.deepEqual({
                'date': '2024-01-16',
                'region': 'duebendorf',
                'zip': 8600,
                'area': '2',
                'station': '',
                'waste_type': 'waste',
                'description': ''
            });
        });
        it('should return a correct entry for oekibus duebendorf area=oekibus-donnerstag', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=duebendorf&types=oekibus&area=oekibus-donnerstag&sort=date&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(50);
            response.result._metadata.should.deepEqual({
                'total_count': 50,
                'row_count': 50,
            });
            response.result.result[2].should.deepEqual({
                'date': '2024-01-18',
                'region': 'duebendorf',
                'zip': 8600,
                'area': 'oekibus-donnerstag',
                'station': '',
                'waste_type': 'oekibus',
                'description': '08.00–08.20 Kunklerstrasse 15\n08.30–08.50 Dietlikonstrasse (Parkplatz Flugfeld)\n09.00–09.20 Zwinggartenstrasse 55–65\n09.30–09.50 Kriesbachstrasse 61\n10.00–10.20 Grundstrasse 28–34 (Zwinggartenparkplatz)\n10.30–10.50 Bühlwiesenstrasse 3\n13.30–13.50 Ringwiesen (Zionshalle)\n14.00–14.20 Wasserfurren 15\n14.30–14.50 Stettbach (Milchhüsli / Stettbach-Lädeli)\n15.00–15.20 Meisenrain 39\n15.25–15.45 Alte Gockhauserstrasse 2\n15.50–16.10 Tichelrütistrasse 6\n16.15–16.35 Untere Geerenstrasse 61 (Holzkorporation)\n'
            });
        });
    });

    describe('/api/calendar.json for Wangen-Brüttisellen', function() {
        it('should return a correct entry for wangen-bruttisellen', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=wangen-bruttisellen&sort=date,waste_type,area&start=2024-01-01&end=2024-12-31'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(144);
            response.result._metadata.should.deepEqual({
                'total_count': 144,
                'row_count': 144,
            });
            response.result.result[0].should.deepEqual({
                'date': '2024-01-03',
                'region': 'wangen-bruttisellen',
                'zip': 8306,
                'area': '',
                'station': '',
                'waste_type': 'cardboard',
                'description': ''
            });
        });
        it('should return a correct entry for wangen-bruttisellen paper', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/api/calendar.json?region=wangen-bruttisellen&sort=date,waste_type&start=2024-01-01&end=2024-12-31&types=paper'
            });
            response.statusCode.should.equal(200);
            response.result.result.length.should.equal(12);
            response.result._metadata.should.deepEqual({
                'total_count': 12,
                'row_count': 12,
            });
            response.result.result[2].should.deepEqual({
                'date': '2024-03-02',
                'region': 'wangen-bruttisellen',
                'zip': 8306,
                'area': '',
                'station': '',
                'waste_type': 'paper',
                'description': ''
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
