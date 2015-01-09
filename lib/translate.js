var Localize = require('localize');

var trans = new Localize({
    "Station": {
        "de": "Sammelstelle"
    },
    "paper": {
        "de": "Papier"
    },
    "cardboard": {
        "de": "Karton"
    },
    "textile": {
        "de": "Altkleider"
    },
    "waste": {
        "de": "Abfall"
    },
    "special": {
        "de": "Sonderabfall"
    },
    "etram": {
        "de": "E-Tram"
    },
    "cargotram": {
        "de": "Cargotram"
    },
    "ZIP: $[1]": {
        "de": "PLZ: $[1]"
    }
});

exports.trans = trans;
