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

var swaggerOptions = {
    basePath: appConfig.basepath,
    apiVersion: version,
    info: {
        title: 'Open ERZ API',
        description: 'This API provides data from <a href=\'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling.html\'>Entsorgung und Recycling Zürich (ERZ)</a>. The data is provided on the <a href=\'http://data.stadt-zuerich.ch/\'>open data portal of the City of Zurich</a>.',
        license: 'MIT License, © Stefan Oderbolz 2014',
        licenseUrl: 'https://github.com/metaodi/openerz/blob/master/LICENSE.md'
    }
};

server.pack.register({
        plugin: require('hapi-swagger'),
        options: swaggerOptions
    }, function (err) {
    if (err) {
        server.log(['error'], 'Plugin "hapi-swagger" load error: ' + err)
    }else{
        server.log(['start'], 'Swagger interface loaded')
    }
});

route.generateRoutes(server);

// Start the server
server.start(function() {
  console.log('Server started at ' + server.info.uri);
});

exports.server = server;
