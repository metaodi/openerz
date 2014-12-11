'use strict';

//Load the config.yml in a global variable
var config = require('./lib/config'),
    appConfig = config.app(),
    version = config.version();

var Hapi = require('hapi');
var route = require('./lib/route');

// Create a server with a host and port
var server = Hapi.createServer(
    '0.0.0.0',
    appConfig.port,
    {
        cors: true
    });

var options = {
    basePath: appConfig.basepath,
    apiVersion: version
};

server.pack.require({'hapi-swagger': options}, function (err) {
    if (!err && err !== null) {
        server.log(['error'], 'Plugin "hapi-swagger" load error: ' + err);
    } else {
         server.log(['start'], 'swagger interface loaded');
    }
});

route.generateRoutes(server);

// Start the server
server.start(function() {
  console.log('Server started at ' + server.info.uri);
});

exports.server = server;