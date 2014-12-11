'use strict';

exports.version = versionConfig;
exports.app = appConfig;

var version;
function versionConfig() {
    if (version) {
        return version;
    } else {
        version = require('../package.json').version;
        return version;
    }
}

function appConfig() {
    var app;
    if (process.env.NODE_ENV === 'test') {
        app = {
            port: 3002,
            basepath: ''
        };
    } else {
        app = {
            port: process.env.PORT || 8080,
            basepath: ''
        };
    }
    return app;
}

