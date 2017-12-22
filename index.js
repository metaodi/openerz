'use strict';

var server = require('./lib/server');

server.initServer(function(err, hapi) {
    if (err) {
        console.log('Got an error while registering modules on server: ' + err);
        throw err;
    }
    hapi.start(function(err) {
        if (err) {
            console.log("Error on startup: ", err);
            return;
        }
        console.log('Server started at ' + hapi.info.uri);
    });
});
