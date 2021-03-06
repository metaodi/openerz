var Moment = require('moment');

// define day of the organic collection
var startOfNextYear = Moment().add(1, 'year').startOf('year');
var day = 'Wednesday';
var organicDate = Moment(startOfNextYear).isoWeekday(day);

//CSV Header
//console.log('PLZ,Abholdatum,Tour');

while (organicDate.year() <= startOfNextYear.year()) {
    if (organicDate.month() !== 11) {
        console.log('8800,' + organicDate.format('YYYY-MM-DD') + ',');
    }
    organicDate = organicDate.add(7, 'days');
}

//special handling for december
console.log('8800,2021-12-01,');
console.log('8800,2021-12-08,');
console.log('8800,2021-12-15,');
console.log('8800,2021-12-22,');
