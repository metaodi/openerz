var Moment = require('moment');

// define days of the waste collection
var startOfNextYear = Moment().add(1, 'year').startOf('year');
var tourAday = 'Monday';
var tourADate = Moment(startOfNextYear).isoWeekday(tourAday);
var tourBday = 'Tuesday';
var tourBDate = Moment(startOfNextYear).isoWeekday(tourBday);
var tourCday = 'Friday';
var tourCDate = Moment(startOfNextYear).isoWeekday(tourCday);

//CSV Header
//console.log('PLZ,Abholdatum,Tour');

while (tourADate.year() <= startOfNextYear.year()) {
    console.log('8800,' + tourADate.format('YYYY-MM-DD') + ',A');
    tourADate = tourADate.add(7, 'days');
}

while (tourBDate.year() <= startOfNextYear.year()) {
    console.log('8800,' + tourBDate.format('YYYY-MM-DD') + ',B');
    tourBDate = tourBDate.add(7, 'days');
}

while (tourCDate.year() <= startOfNextYear.year()) {
    console.log('8800,' + tourCDate.format('YYYY-MM-DD') + ',C');
    tourCDate = tourCDate.add(7, 'days');
}

// Note: after generating the dates you need to double check them
//       against public holidays, if a dates is on a holidays, it
//       is caught up on the next working day.
