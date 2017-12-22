'use strict';

var should = require('should'),
    initServer = require('../lib/server').initServer;
var server;

describe('make sure the server is running (test.export)', function() {
    before(function(done) {
        initServer(function(err, readyServer) {
            if (err) {
                throw err;
            }
            server = readyServer;
            done();
        });
    });

    describe('/export/metadata is working', function() {
        it('should return a list of files', function(done) {
            server.inject({
                method: 'GET',
                url: '/export/metadata'
            }, function(response) {
                var result = JSON.parse(response.payload);
                should.exist(result.files);
                done();
            });
        });
    });
});
