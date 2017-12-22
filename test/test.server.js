'use strict';

var should = require('should'),
    initServer = require('../lib/server').initServer;
var server;

describe('make sure the server is running (test.server)', function() {
    before(function(done) {
        initServer(function(err, readyServer) {
            if (err) {
                throw err;
            }
            server = readyServer;
            done();
        });
    });

    describe('Isalive is working', function() {
        it('should return is up and running!', function(done) {
            // with server.inject starting the server is actually not necessary
            // but unfortunately the /documentation route provided by hapi-swagger
            // only works with a running server, so we start it for these tests here
            server.start(function(err) {
                server.inject({
                    method: 'GET',
                    url: '/isalive'
                }, function(response) {
                    response.payload.should.equal('Is up and running!');
                    server.stop(done);
                });
            });
        });
    });

    describe('API doc is working', function() {
        it('should return the docs.', function(done) {
            server.inject({
                method: 'GET',
                url: 'http://montoya:8080/documentation'
            }, function(response) {
                response.statusCode.should.equal(200);
                response.payload.should.match(/.*Open ERZ API.*/);
                done();
            });
        });
    });

    describe('Catch-all redirect is working', function() {
        it('should redirect to the api docs.', function(done) {
            server.inject({
                method: 'GET',
                url: '/xyz'
            }, function(response) {
                response.statusCode.should.equal(302);
                response.headers.location.should.match(/.*\/documentation$/);
                done();
            });
        });
    });
});
