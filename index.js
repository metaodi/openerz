'use strict';

var liftOff = require('./lib/server').liftOff;

const formatLogEvent = function(event) {
    console.log(`[${event.tags}], ${event.data}`);
};


(async () => {
    try {
        var server = await liftOff();
        await server.start();
        console.log(`Server started at ${server.info.uri}`);
        server.events.on('log', formatLogEvent);

    } catch (err) {
        console.log('Got an error while starting server: ' + err);
        throw err;
    }
})();
