# Data Sources

The data is either downloaded and converted (typically using a Python script) or generated from a config file.

There are two entities needed for each municipality:

- `calendar` file containing the dates of the different kinds of waste collection, basis of the `/api/calendar` endpoints
- `station` file containing all the waste collection stations, this is the basis of the `/api/stations` endpoint

## Format

### Calendar

The calendar must be available as CSV with the following structure to ensure the seamless import in the database:

1. `region`, region/municipality of the waste collection
    - `adliswil`
    - `basel`
    - `bassersdorf`
    - `duebendorf`
    - `embrach`
    - `gossau-zh`
    - `hombrechtikon`
    - `horgen`
    - `kilchberg`
    - `langnau`
    - `oberrieden`
    - `richterswil`
    - `rueschlikon`
    - `seon`
    - `stgallen`
    - `thalwil`
    - `thalwil`
    - `uster`
    - `waedenswil`
    - `wangen-bruttisellen`
    - `wetzikon`
    - `wiesendangen`
    - `winterthur`
    - `zurich`
2. `zip`, sometimes a zip code is given
    - `8038`
3. `area`, an area within a region that has the same schedule, this could be a street, a part of town etc.
    - `A`, `B`, `C`
    - leave empty (`""`) if this is not applicable
4. `station`, if the collection only happens at a specific station
    - This is for special cases like the CargoTran
    - Leave empty if unsure
5. `waste_type`, the type of waste collection
    - `bulky_goods`
    - `cardboard`
    - `cargotram`
    - `chipping_service`
    - `etram`
    - `incombustibles`
    - `metal`
    - `organic`
    - `paper`
    - `special`
    - `textile`
    - `waste`
6. `col_date`, date of the collection
    - ISO 8601 date, YYYY-MM-DD

### Station

The collection stations must be available as CSV with the following structure:

1. `region`
    - `adliswil`
    - `basel`
    - `bassersdorf`
    - `duebendorf`
    - `embrach`
    - `gossau-zh`
    - `hombrechtikon`
    - `horgen`
    - `kilchberg`
    - `langnau`
    - `oberrieden`
    - `richterswil`
    - `rueschlikon`
    - `seon`
    - `stgallen`
    - `thalwil`
    - `thalwil`
    - `uster`
    - `waedenswil`
    - `wangen-bruttisellen`
    - `wetzikon`
    - `wiesendangen`
    - `winterthur`
    - `zurich`
2. `zip`, zip code where the station is located
    - `8815`
3. `name`
    - name of the station + address if necessary
4. `oil`
    - `true`
    - `false`
5. `metal`
    - `true`
    - `false`
6. `glass`
    - `true`
    - `false`
7. `textile`
    - `true`
    - `false`


## Municipalities

### Zurich

The source files of the City of Zurich are [published on their Open Data Portal](https://data.stadt-zuerich.ch/dataset?tags=entsorgung).
The files from the City of Zurich are appended to the corresponding CSV.

Use `zurich.py` to download the data.

### Basel

The source file of Basel are published in their [Open Data Portal](https://data.bs.ch/explore/dataset/100096/).
The file from Basel is append to the corresponding CSV.

You can use `basel.py` to download the latest version.

### St. Gallen

The source file of St. Gallen ist publihsed on their [Open Data Portal](https://daten.stadt.sg.ch/explore/dataset/abfuhrdaten-stadt-stgallen/).

Use `stgallen.py` to download the latest version

### District Horgen

All municipalities in the district of Horgen are using the same web application to publish the waste collection calendar.
Therefore a single script called `zimmerberg.py` can be used to download the files of the following municipalities:

- Adliswil
- Horgen
- Kilchberg
- Langnau
- Oberrieden
- Richterswil
- Rüschlikon
- Thalwil
- Wädenswil

### Uster

Uster publishes part of their waste calendar as ICS file, but normal waste and organic have a simple rule (weekly on weekday X in area Z).
Therefore all dates must be checked for holidays.

This requires some manual work.
The script to generate the CSV is `uster.py`

### Wangen-Brüttisellen

Wangen-Brüttisellen doesnt expose any machine readable format. The CSV is generated from the config file [wangen-bruttisellen.yml](https://github.com/metaodi/openerz/blob/main/config/regions/wangen-bruttisellen.yml).

The information is taken from the [municipality website](https://www.wangen-bruettisellen.ch/de/verwaltung/abfall)

### Dübendorf

Dübendorf publishes it's calendar as [iCal/ICS file on their website](https://www.duebendorf.ch/dienstleistungen/97555) (one for each area).
The stations are [published](https://www.duebendorf.ch/abfallorte) as well.

### Bassersdorf

Bassersdorf doesnt expose any machine readable format. The CSV is generated from the config file [bassersdorf.yml](https://github.com/metaodi/openerz/blob/main/config/regions/bassersdorf.yml).

The information is taken from the [municipality website](https://www.bassersdorf.ch/politik-verwaltung/verwaltung/dienstleistungen-az.html/81/service/367)

### Embrach

Embrach doesn't expose any machine readable format, the CSV in genereted from the config file [`embrach.yml`](https://github.com/metaodi/openerz/blob/main/config/regions/embrach.yml).

The information is taken from the [municipality website](https://www.embrach.ch/dienstleistungen/7338)

### Wetzikon

Wetzikon provides a [calender via Antrahzit](https://www.wetzikon.ch/de/verwaltung/abteilungen/70_entsorgung-+-entw%C3%A4sserung), one for each "Kreis" and waste type.

### Wiesendangen

Wiesendangen doesnt expose any machine readable format. The CSV is generated from the config file [wiesendangen.yml](https://github.com/metaodi/openerz/blob/main/config/regions/wiesendangen.yml).

The information is taken from the [municipality website](https://www.wiesendangen.ch/dienstleistungen/28321)

### Winterthur

Winterthur provides a [calender via Antrahzit](https://stadt.winterthur.ch/themen/leben-in-winterthur/abfall/abfallsammelstellen), one for each "Tour" and waste type.

### Hombrechtikon

Hombrechtikon doesn't expose any machine readable format, the CSV is generated from the config file [`hombrechtikon.yml`](https://github.com/metaodi/openerz/blob/main/config/regions/hombrechtikon.yml).

The information is taken from the [municipality website](https://www.hombrechtikon.ch/verwaltung/online-schalter.html/311/product/230)

### Gossau ZH

Gossau ZH doesn't expose any machine readable format, the CSV is generated from the config file [`gossau-zh.yml`](https://github.com/metaodi/openerz/blob/main/config/regions/gossau-zh.yml).

The information is taken from the [municipality website](https://www.gossau-zh.ch/ueber-uns/verwaltung/bauabteilung/entsorgung/)

### Seon

Seon doesn't expose any machine readable format, the CSV is generated from the config file [`seon.yml`](https://github.com/metaodi/openerz/blob/main/config/regions/seon.yml).

The information is taken from the [municipality website](https://www.seon.ch/verwaltung/dienstleistungen.html/21/egov_service/370)
