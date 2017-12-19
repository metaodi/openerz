'use strict';

// Load the config.yml in a global variable
var config = require('./lib/config'),
    appConfig = config.app(),
    version = config.version();

var Hapi = require('hapi');
var HapiSwagger = require('hapi-swagger');
var Inert = require('inert');
var Vision = require('vision');
var H2o2 = require('h2o2');

var route = require('./lib/route');

// Create a server with a host and port
var server = new Hapi.Server();
server.connection({ port: appConfig.port });

// jscs:disable maximumLineLength
var swaggerOptions = {
    basePath: appConfig.basepath,
    info: {
        title: 'Open ERZ API',
        version: version,
        description: '<ul style=\'list-style-type: disc; padding: 20px; font-size: 16px;\'><li>This API provides data from <a href=\'https://www.stadt-zuerich.ch/ted/de/index/entsorgung_recycling.html\'>Entsorgung und Recycling Zürich (ERZ)</a></<li><li>The data is provided on the <a href=\'https://data.stadt-zuerich.ch/\'>open data portal of the City of Zurich</a></li><li>All the code <a href=\'https://github.com/metaodi/openerz\'>is open source and can be found on GitHub</a></li><li>All notable changes to this API are documented in <a href=\'https://github.com/metaodi/openerz/blob/master/CHANGELOG.md\'>it\'s CHANGELOG</a>.</li><li>The logo was created by sigit milshtein from the Noun Project (CC-BY 3.0)</li></ul>',
        license: {
            name: 'MIT License',
            url: 'https://github.com/metaodi/openerz/blob/master/LICENSE.md'
        },
        contact: {
            name: '© Stefan Oderbolz 2018',
            url: 'https://github.com/metaodi/openerz',
            email: 'openerz@metaodi.ch'
        }
    }
};
// jscs:enable maximumLineLength

var initialized = false;

var initServer = function(callback) {
    if (initialized) {
        console.log("ALREADY INITIALIZED");
        callback();
        return;
    } else {
        console.log("NOT YET INITIALIZED");
        server.register(
            [
                { register: HapiSwagger, options: swaggerOptions },
                Inert,
                Vision,
                H2o2,
                route
            ],
            function(err) {
                if (err) {
                    console.log('Got an error while registering modules on server: ' + err);
                    throw err;
                }
                initialized = true;
                // Start the server
                server.start(callback);
            }
        );
    }
};

if (!module.parent) {
    initServer(function(err) {
        if (err) {
            console.log("Error on startup: ", err);
            return;
        }
        console.log('Server started at ' + server.info.uri);
    });
}

exports.initServer = initServer;
exports.server = server;
