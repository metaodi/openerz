// jscs:disable maximumLineLength
'use strict';

var should = require('should'),
    appConfig = require('../lib/config').app(),
    supertest = require('supertest')('http://localhost:' + appConfig.port),
    initServer = require('../index').initServer,
    server = require('../index').server;

describe('make sure the server is running (test.api)', function() {
    // start the server
    before(function(done) {
        initServer(function(err) {
            should.not.exist(err);
            done();
        });
    });

    describe('/api/stations is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/stations')
                .expect(200, done);
        });
    });

    describe('/api/tramstops is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tramstops')
                .expect(200, done);
        });
    });

    describe('/api/tramstops.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tramstops.json')
                .expect(200, done);
        });
    });

    describe('/api/tramstops.geojson is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tramstops.geojson')
                .expect(200, done);
        });
    });

    describe('/api/tramstops.test does not work', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tramstops.test')
                .expect(406, done);
        });
    });

    describe('/api/wastebins is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/wastebins')
                .expect(200, done);
        });
    });

    describe('/api/wastebins.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/wastebins.json')
                .expect(200, done);
        });
    });

    describe('/api/wastebins.geojson is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/wastebins.geojson')
                .expect(200, done);
        });
    });


    describe('/api/calendar is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar')
                .expect(200, done);
        });
    });

    describe('/api/calendar.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cardboard is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cardboard')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cardboard.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cardboard.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cardboard.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cardboard.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/paper is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/paper')
                .expect(200, done);
        });
    });

    describe('/api/calendar/paper.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/paper.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/paper.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/paper.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/waste is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/waste')
                .expect(200, done);
        });
    });

    describe('/api/calendar/waste.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/waste.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/waste.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/waste.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/special is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/special')
                .expect(200, done);
        });
    });

    describe('/api/calendar/special.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/special.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/special.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/special.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/organic is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/organic')
                .expect(200, done);
        });
    });

    describe('/api/calendar/organic.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/organic.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/organic.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/organic.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/textile is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/textile')
                .expect(200, done);
        });
    });

    describe('/api/calendar/textile.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/textile.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/textile.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/textile.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/etram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/etram')
                .expect(200, done);
        });
    });

    describe('/api/calendar/etram.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/etram.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/etram.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/etram.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cargotram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cargotram')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cargotram.ics is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cargotram.ics')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cargotram.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cargotram.json')
                .expect(200, done);
        });
    });

    describe('/api/calendar/cargotram.test does not work', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar/cargotram.test')
                .expect(406, done);
        });
    });

    describe('/api/calendar.json?types=cargotram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json?types=cargotram')
                .expect(200, done);
        });
    });

    describe('/api/calendar.json?types=cargotram&types=etram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json?types=cargotram&types=etram')
                .expect(200, done);
        });
    });

    describe('/api/calendar.json API is returning records', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json')
                .expect(200)
                .end(function(err, res) {
                    if (err) {
                        return done(err);
                    }
                    (res.body._metadata.total_count).should.be.above(0);
                    done();
                });
        });
    });

    describe('/api/calendar.json API is returning a correct entry', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json?types=paper&types=cardboard&zip=8038&lang=de&start=2016-01-01&end=2016-01-05&sort=date')
                .expect(200, {
                    "_metadata": {"total_count": 1},
                    "result": [{
                        "date": "2016-01-04",
                        "zip": 8038,
                        "type": "cardboard"
                    }]
                }, done);
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
            supertest
                .get('/api/calendar.ics?types=paper&types=cardboard&zip=8038&lang=de&start=2016-01-01&end=2016-01-05&sort=date')
                .expect(200)
                .end(function(err, res) {
                    should.not.exist(err);
                    should.equal(res.text, expectedResult);
                    done();
                });
        });
    });

});
