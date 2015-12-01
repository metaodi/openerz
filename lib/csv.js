exports.convertToJson = convertToJson;

var Converter = require('csvtojson').core.Converter;
var fs = require("fs");
var _ = require('underscore');

function csvToJson(path, delimiter, callback) {
    var fileStream = fs.createReadStream(path);
    var csvConverter = new Converter({
        constructResult: true,
        delimiter: delimiter
    });

    csvConverter.on("end_parsed", function(obj) {
        callback(obj);
    });

    fileStream.pipe(csvConverter);
}

function convertToJson(path, formatFn, delimiter, callback) {
    var format = formatFn || function(obj) {return obj;};
    var delim = delimiter || ';';
    csvToJson(path, delim, function(obj) {
        callback(_.map(obj, format));
    });
}
