var _ = require('underscore');
var Moment = require('moment');

// define days of the waste collection
var tourAday = 'Monday';
var tourADate = Moment().startOf('year').isoWeekday(tourAday);
var tourBday = 'Tuesday';
var tourBDate = Moment().startOf('year').isoWeekday(tourBday);
var tourCday = 'Friday';
var tourCDate = Moment().startOf('year').isoWeekday(tourCday);

//CSV Header
console.log("PLZ,Abholdatum,Tour");

while (tourADate.year() <= Moment().year()) {
    console.log("8800," + tourADate.format('YYYY-MM-DD') + ",A");
    tourADate = tourADate.add(7, 'days');
}

while (tourBDate.year() <= Moment().year()) {
    console.log("8800," + tourBDate.format('YYYY-MM-DD') + ",B");
    tourBDate = tourBDate.add(7, 'days');
}

while (tourCDate.year() <= Moment().year()) {
    console.log("8800," + tourCDate.format('YYYY-MM-DD') + ",C");
    tourCDate = tourCDate.add(7, 'days');
}

// Note: after generating the dates you need to double check them
//       against public holidays, if a dates is on a holidays, it
//       is caught up on the next working day.
