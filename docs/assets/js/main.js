window.addEventListener('DOMContentLoaded', function () {
    'use strict';
    var form = $$('#url-form')[0];                          
    for (var i = 0; i < form.elements.length; i++) {
        form.elements[i].onchange = function() {
            var data = new FormData($$('#url-form')[0]);
            updateUrl(data);
        }
    }   
});
    
function updateUrl(formData) {
    // get all values
    var gemeinde = data.get('gemeinde');
    var art = data.getAll('art');
    var area = data.get('area');
    
    if !(gemeinde) {
        return;
    }
    var url = 'https://openerz.metaodi.ch/api/calendar.ics?lang=de&region=' + gemeinde;
    if (area) {
        url += '&area=' + area;
    }
    if (art) {
        art.forEach.forEach(function (a) {
            url += '&types=' + a;
        });
    }
    return url;
}
