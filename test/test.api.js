// jscs:disable maximumLineLength
'use strict';

var should = require('should'),
    initServer = require('../lib/server').initServer;
var server;

describe('make sure the server is running (test.api)', function() {
    before(function(done) {
        initServer(function(err, readyServer) {
            if (err) {
                throw err;
            }
            server = readyServer;
            done();
        });
    });

    describe('/api/stations is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/stations'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/tramstops is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/tramstops'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/tramstops.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/tramstops.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/tramstops.geojson is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/tramstops.geojson'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/tramstops.test does not work', function() {
        it('should return an error', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/tramstops.test'
            }, function(response) {
                response.statusCode.should.equal(406);
                done();
            });
        });
    });

    describe('/api/wastebins is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/wastebins'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/wastebins.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/wastebins.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/wastebins.geojson is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/wastebins.geojson'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });


    describe('/api/calendar is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cardboard is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cardboard.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cardboard.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/paper is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/paper'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/paper.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/paper.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/paper.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/paper.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/waste is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/waste'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/waste.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/waste.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/waste.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/waste.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/special is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/special'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/special.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/special.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/special.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/special.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/organic is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/organic'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/organic.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/organic.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/organic.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/organic.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/textile is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/textile'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/textile.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/textile.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/textile.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/textile.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/etram is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/etram'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/etram.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/etram.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/etram.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/etram.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cargotram is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cargotram.ics is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram.ics'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cargotram.json is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram.json'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar/cargotram.test does not work', function() {
        it('should return an error', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cargotram.test'
            }, function(response) {
                response.statusCode.should.equal(406);
                done();
            });
        });
    });

    describe('/api/calendar.json?types=cargotram is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=cargotram'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar.json?types=cargotram&types=etram is working', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=cargotram&types=etram'
            }, function(response) {
                response.statusCode.should.equal(200);
                done();
            });
        });
    });

    describe('/api/calendar.json API is returning records', function() {
        it('should return several results', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json'
            }, function(response) {
                (response.result._metadata.total_count).should.be.above(0);
                done();
            });
        });
    });

    describe('/api/calendar.json API is returning a correct entry', function() {
        it('should return something', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json?types=paper&types=cardboard&zip=8038&lang=de&start=2016-01-01&end=2016-01-05&sort=date'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.result.should.deepEqual({
                    "_metadata": {"total_count": 1},
                    "result": [{
                        "date": "2016-01-04",
                        "zip": 8038,
                        "type": "cardboard"
                    }]
                });
                done();
            });
        });
    });

    describe('/api/calendar/cardboard.json with zip and tour parameter', function() {
        it('should return a correct entry for 8800', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&tour=b&limit=1&sort=date'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.result.should.deepEqual({
                    "_metadata": {"total_count": 12},
                    "result": [{
                        "date": "2018-01-11",
                        "zip": 8800,
                        "tour": "b",
                        "type": "cardboard"
                    }]
                });
                done();
            });
        });
        it('should return a correct entry for 8800 with uppercase tour', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&tour=B&limit=1&sort=date'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.result.should.deepEqual({
                    "_metadata": {"total_count": 12},
                    "result": [{
                        "date": "2018-01-11",
                        "zip": 8800,
                        "tour": "b",
                        "type": "cardboard"
                    }]
                });
                done();
            });
        });
        it('should return a correct entry for 8800 without tour parameter', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar/cardboard.json?zip=8800&limit=1&sort=date'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.result.should.deepEqual({
                    "_metadata": {"total_count": 36},
                    "result": [{
                        "date": "2018-01-04",
                        "zip": 8800,
                        "tour": "a",
                        "type": "cardboard"
                    }]
                });
                done();
            });
        });
    });
    describe('/api/calendar.json with zip and tour parameter', function() {
        it('should return a correct entry for 8800', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&tour=a&limit=1&sort=date'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.result.should.deepEqual({
                    "_metadata": {"total_count": 132},
                    "result": [{
                        "date": "2018-01-03",
                        "zip": 8800,
                        "type": "organic"
                    }]
                });
                done();
            });
        });
        it('should return a correct entries for 8800 (without and without tour)', function(done) {
            server.inject({
                method: 'GET',
                url: '/api/calendar.json?zip=8800&tour=a&limit=2&start=2018-06-01&end=2018-06-30&sort=date'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.result.should.deepEqual({
                    "_metadata": {"total_count": 11},
                    "result": [{
                        "date": "2018-06-02",
                        "zip": 8800,
                        "type": "paper"
                    },
                    {
                        "date": "2018-06-04",
                        "zip": 8800,
                        "tour": "a",
                        "type": "waste"
                    }]
                });
                done();
            });
        });
    });

    describe('/api/calendar.ics API is returning a correct entry', function() {
        it('should return something', function(done) {
            var expectedLines = [
                "BEGIN:VCALENDAR",
                "VERSION:2.0",
                "PRODID:-//metaodi//openerz//EN",
                "NAME:OpenERZ",
                "X-WR-CALNAME:OpenERZ",
                "DESCRIPTION:Entsorungskalender der Stadt Zürich (ERZ)",
                "X-WR-CALDESC:Entsorungskalender der Stadt Zürich (ERZ)",
                "TIMEZONE-ID:Europe/Zurich",
                "TZID:Europe/Zurich",
                "X-WR-TIMEZONE:Europe/Zurich",
                "BEGIN:VEVENT",
                "SUMMARY:Karton\\, PLZ: 8038",
                "LOCATION:PLZ: 8038",
                "DESCRIPTION:Kartonabfuhr-Kalender",
                "DTSTART;VALUE=DATE:20160104",
                "DTEND;VALUE=DATE:20160105",
                "END:VEVENT",
                "END:VCALENDAR"
            ];
            var expectedResult = expectedLines.join("\r\n") + "\r\n";
            server.inject({
                method: 'GET',
                url: '/api/calendar.ics?types=paper&types=cardboard&zip=8038&lang=de&start=2016-01-01&end=2016-01-05&sort=date'
            }, function(response) {
                response.payload.should.deepEqual(expectedResult);
                done();
            });
        });
    });
});
