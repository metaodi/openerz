'use strict';

var should = require('should'),
    appConfig = require('../lib/config').app(),
    supertest = require('supertest')('http://localhost:' + appConfig.port),
    server = require('../index').server;

describe('make sure the server is running', function() {
    // start the server
    before(function(done) {
        server.start(function(err) {
            should.not.exist(err);
            done();
        });
    });

    describe('/export/metadata is working', function() {
        it('should return a list of files', function(done) {
            supertest
                .get('/export/metadata')
                .expect(function(res) {
                    var body = JSON.parse(res.text);
                    if (!body['files']) {
                        return '/export/metadata lacks the `files` property';
                    }
                    if (body['files'].length === 0) {
                        return 'The files array is empty';
                    }
                })
                .end(done);
        });
    });

    // kill the server again
    after(function(done) {
        server.stop(done);
    });
});
