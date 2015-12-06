'use strict';

var should = require('should'),
    appConfig = require('../lib/config').app(),
    testHost = 'http://localhost:' + appConfig.port,
    supertest = require('supertest')(testHost),
    server = require('../index').server;

describe('make sure the server is running', function() {
    // start the server
    before(function(done) {
        server.start(function(err) {
            should.not.exist(err);
            done();
        });
    });

    describe('Isalive is working', function() {
        it('should return is up and running!', function(done) {
            supertest
                .get('/isalive')
                .expect('Is up and running!', done);
        });
    });

    describe('API doc is working', function() {
        it('should return the docs.', function(done) {
            supertest
                .get('/doc')
                .expect(/.*Open ERZ API Documentation.*/, done);
        });
    });

    describe('Catch-all redirect is working', function() {
        it('should redirect to the api docs.', function(done) {
            supertest
                .get('/xyz')
                .expect(302)
                .expect('location', testHost + '/doc', done);
        });
    });

    // kill the server again
    after(function(done) {
        server.stop(done);
    });
});
