exports.convertToJson = convertToJson;

var Converter = require('csvtojson').core.Converter;
var fs = require("fs");
var _ = require('underscore');

function csvToJson(path, callback) {
    var fileStream = fs.createReadStream(path);
    var csvConverter = new Converter({
        constructResult: true,
        delimiter: ';'
    });

    csvConverter.on("end_parsed", function(obj) {
        callback(obj);
    });

    fileStream.pipe(csvConverter);
}

function convertToJson(path, formatFn, callback) {
    var format = formatFn || function(obj) {return obj;};
    csvToJson(path, function(obj) {
        callback(_.map(obj, format));
    });
}
