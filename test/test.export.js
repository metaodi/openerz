/*global describe it before after*/
'use strict';

var should = require('should'),
    liftOff = require('../lib/server').liftOff;

var server;

describe('make sure the server is running (test.export)', function() {
    before(async function() {
        server = await liftOff();
        await server.initialize();
        console.log('Server initialized');
    });

    after(async function() {
        await server.stop();
        console.log('Server stopped.');
    });

    describe('/export/metadata is working', function() {
        it('should return a list of files', async function() {
            var response = await server.inject({
                method: 'GET',
                url: '/export/metadata'
            });
            var result = JSON.parse(response.payload);
            should.exist(result.files);
        });
    });
});
