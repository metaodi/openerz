Source Files
============

## Zurich

The source files of the City of Zurich are [published on their Open Data Portal](https://data.stadt-zuerich.ch/dataset?tags=entsorgung).

## Thalwil

Thalwil does not yet publish machine-readable data, but there is a PDF (see e.g. the 2018 version).
For some waste types, the dates are not given, but rather an algorithm (e.g. organic waste is collected weekly on Wednesday from January to November, in December only on the 5.12. and the 19.12.2018).
Therefore there are scripts for those files:

```
node thalwil_waste.js > thalwil_kehricht_2018.csv
node thalwil_organic.js > thalwil_bioabfall_2018.csv
```
