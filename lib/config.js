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

var app = null;
function appConfig() {
  if (app) {
    // config has been loaded before therefore retrieve from cache
    return app;
  } else {
    app = {
        port: process.env.PORT || 8080,
        basepath: ''
    }
    return app;
  }
}

