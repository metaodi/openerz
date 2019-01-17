'use strict';

var should = require('should'),
    liftOff = require('../lib/server').liftOff;

var server;

describe('make sure the server is running (test.server)', function() {
    before(async function() {
        server = await liftOff();
        await server.initialize();
        console.log("Server initialized");
    });

    after(async function() {
        await server.stop();
        console.log("Server stopped.");
    });

    describe('Isalive is working', function() {
        it('should return is up and running!', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/isalive'
            });
            response.payload.should.equal('Is up and running!');
        });
    });

    describe('API doc is working', function() {
        it('should return the docs.', async function() {
            var response = await server.inject({
                method: 'GET',
                url: 'http://montoya:8080/documentation'
            });
            response.statusCode.should.equal(200);
            response.payload.should.match(/.*Open ERZ API.*/);
        });
    });

    describe('Catch-all redirect is working', function() {
        it('should redirect to the api docs.', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/xyz'
            });
            response.statusCode.should.equal(302);
            response.headers.location.should.match(/.*\/documentation$/);
        });
    });
});
