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

  describe('Isalive is working', function() {
    it('should return is up and running!', function(done) {
      supertest
        .get('/isalive')
        .expect('Is up and running!', done);
    });
  });

  // kill the server again
  after(function() {
    server.stop();
  });
});
