var _ = require('underscore');
var Moment = require('moment');

// define day of the organic collection
var day = 'Wednesday';
var organicDate = Moment().startOf('year').isoWeekday(day);

//CSV Header
console.log("PLZ,Abholdatum");

while (organicDate.year() <= Moment().year()) {
    if (organicDate.month() !== 11) {
        console.log("8800," + organicDate.format('YYYY-MM-DD'));
    }
    organicDate = organicDate.add(7, 'days');
}

//special handling for december
console.log("8800,2018-12-05");
console.log("8800,2018-12-19");
