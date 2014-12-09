'use strict';

exports.generateRoutes = generateRoutes;

var Hapi = require('hapi');

function generateRoutes(server) {
    server.route({
            method: 'GET',
            path: '/',
            handler: redirectToDocs()
    }); 

    server.route({
        method: 'GET',
        path: '/doc{s?}',
        handler: {
            file: 'public/apidoc.html'
        }
    });

    server.route({
        method: 'GET',
        path: '/isalive',
        handler: function(request, reply) {
            reply('Is up and running!');
        }
    });
}

function redirectToDocs() {
    return function(request, reply) {
        var protocol = 'http';
        var host = request.headers.host;
        reply().redirect(protocol + '://' + host + '/doc');
    };
}
