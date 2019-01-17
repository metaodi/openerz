'use strict';

var liftOff = require('./lib/server').liftOff;

(async () => {
    try {
        var server = await liftOff()
        await server.start()
        console.log(`Server started at ${server.info.uri}`)

    } catch (err) {
        console.log('Got an error while starting server: ' + err);
        throw err;
    }
})();
