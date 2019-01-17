'use strict';

var server = require('./lib/server');

(async () => {
    try {
        await server.liftOff()
        await server.start()
        console.log(`Server started at ${server.info.uri}`)

    } catch (err) {
        console.log('Got an error while starting server: ' + err);
        throw err;
    }
})();
