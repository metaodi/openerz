'use strict';

// Load the config.yml in a global variable
var config = require('./lib/config'),
    appConfig = config.app(),
    version = config.version();

var Hapi = require('hapi');

// Create a server with a host and port
var server = new Hapi.Server();
server.connection({ port: appConfig.port });

// jscs:disable maximumLineLength
var swaggerOptions = {
    basePath: appConfig.basepath,
    apiVersion: version,
    info: {
        title: 'Open ERZ API',
        description: 'This API provides data from <a href=\'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling.html\'>Entsorgung und Recycling Zürich (ERZ)</a>. The data is provided on the <a href=\'http://data.stadt-zuerich.ch/\'>open data portal of the City of Zurich</a>. The logo was created by sigit milshtein from the Noun Project (CC-BY 3.0)',
        license: 'MIT License, © Stefan Oderbolz 2014',
        licenseUrl: 'https://github.com/metaodi/openerz/blob/master/LICENSE.md'
    }
};
// jscs:enable maximumLineLength

server.register(
    { register: require('hapi-swagger'), options: swaggerOptions },
    function(err) {
        if (err) {
            server.log([ 'error' ], 'Plugin "hapi-swagger" load error: ' + err);
        } else {
            server.log([ 'start' ], 'Swagger interface loaded');
        }
    }
);
server.register(
    { register: require('./lib/route') },
    function(err) {
        if (err) {
            server.log([ 'error' ], 'Plugin "OpenERZ roueting" load error: ' + err);
        } else {
            server.log([ 'start' ], 'Routing loaded');
        }
    }
);

// Start the server
server.start(function() {
    console.log('Server started at ' + server.info.uri);
});

exports.server = server;
