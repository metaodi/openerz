/*jshint expr:true */
'use strict';

var should = require('should');

describe('Load the application configuration', function() {
    it('should return an object containing a port and basepath', function(done) {
        var appConfig = require('../lib/config').app();
        appConfig.should.have.property('port');
        appConfig.should.have.property('basepath');
        done();
    });
});
