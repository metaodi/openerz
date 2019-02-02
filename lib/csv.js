exports.convertToJson = convertToJson;

var csv = require('csvtojson');
var _ = require('underscore');

async function csvToJson(path, delimiter, callback) {
    return await csv({'delimiter': delimiter}).fromFile(path);
}

async function convertToJson(path, formatFn, delimiter, callback) {
    var format = formatFn || function(obj) {return obj;};
    var delim = delimiter || ';';
    var obj = await csvToJson(path, delim);
    return _.map(obj, format);
}
