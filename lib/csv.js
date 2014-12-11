'user strict';

exports.csvToJson = csvToJson;

var Converter = require('csvtojson').core.Converter;
var fs = require("fs");

function csvToJson(path, callback) {
    var fileStream = fs.createReadStream(path);
    var csvConverter=new Converter({
        constructResult: true,
        delimiter: ';'
    });

    csvConverter.on("end_parsed", function(obj) {
        callback(obj)
    });

    fileStream.pipe(csvConverter);
}
