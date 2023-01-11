window.addEventListener('DOMContentLoaded', function () {
    'use strict';
    var form = document.getElementById('url-form');                          
    for (var i = 0; i < form.elements.length; i++) {
        form.elements[i].onchange = function() {
            var changedForm = document.getElementById('url-form');
            var data = new FormData(changedForm);
            var url = updateUrl(data);
            var resultField = document.getElementById('result');
            resultField.value = url;
        }
    }   
});
    
function updateUrl(formData) {
    // get all values
    var gemeinde = formData.get('gemeinde');
    var art = formData.getAll('art');
    var area = formData.get('area');
    
    if (!gemeinde) {
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
