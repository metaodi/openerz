'use strict';

var should = require('should'),
    appConfig = require('../lib/config').app(),
    supertest = require('supertest')('http://localhost:' + appConfig.port),
    server = require('../index').server;

describe('make sure the server is running', function() {
    // start the server
    before(function() {
        server.start();
    });

    describe('/api/stations is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/stations')
                .expect(200, done);
        });
    });

    describe('/api/tram_stops is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tram_stops')
                .expect(200, done);
        });
    });

    describe('/api/tram_stops.json is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tram_stops.json')
                .expect(200, done);
        });
    });

    describe('/api/tram_stops.geojson is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tram_stops.geojson')
                .expect(200, done);
        });
    });

    describe('/api/tram_stops.test does not work', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/tram_stops.test')
                .expect(400, done);
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
                .expect(400, done);
        });
    });

    describe('/api/calendar.json?types=cargotram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json?types=cargotram')
                .expect(200, done);
        });
    });

    describe('/api/calendar.json?types[]=cargotram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json?types[]=cargotram')
                .expect(200, done);
        });
    });

    describe('/api/calendar.json?types[]=cargotram&types[]=etram is working', function() {
        it('should return something', function(done) {
            supertest
                .get('/api/calendar.json?types[]=cargotram&types[]=etram')
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

    // kill the server again
    after(function() {
        server.stop();
    });
});
