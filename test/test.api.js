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

  describe('/api/calendar is working', function() {
    it('should return something', function(done) {
      supertest
        .get('/api/calendar')
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
  describe('/api/calendar/paper is working', function() {
    it('should return something', function(done) {
      supertest
        .get('/api/calendar/paper')
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
  describe('/api/calendar/special is working', function() {
    it('should return something', function(done) {
      supertest
        .get('/api/calendar/special')
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
  describe('/api/calendar/etram is working', function() {
    it('should return something', function(done) {
      supertest
        .get('/api/calendar/etram')
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

  // kill the server again
  after(function() {
    server.stop();
  });
});
