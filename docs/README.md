Die Programmierschnittstelle (API) mit den Entsorgungsdaten ist hier: [**https://openerz.metaodi.ch**](https://openerz.metaodi.ch).\
Die Daten können von dort entweder als JSON oder ICS (iCal-Kalender) bezogen werden.

## Kalender abonnieren

<form id="url-form">
  <lable for="gemeinde">Gemeinde</lable>
  <select name="gemeinde">
     <option value="" disabled="disabled">--- Bitte wählen ---</option>
     <option value="adliswil">Adliswil</option>
     <option value="basel">Basel</option>
     <option value="bassersdorf">Bassersdorf</option>
     <option value="duebendorf">Dübendorf</option>
     <option value="horgen">Horgen</option>
     <option value="kilchberg">Kilchberg</option>
     <option value="langnau">Langnau a. A.</option>
     <option value="oberrieden">Oberrieden</option>
     <option value="richterswil">Richterswil</option>
     <option value="rueschlikon">Rüschlikon</option>
     <option value="stgallen">St. Gallen</option>
     <option value="thalwil">Thalwil</option>
     <option value="uster">Uster</option>
     <option value="waedenswil">Wädenswil</option>
     <option value="wangen-bruttisellen">Wangen-Brüttisellen</option>
     <option value="zurich">Zürich</option>
  </select>
  <lable for="art">Abfallarten</lable>
  <select name="art" multiple size="5">
     <option value="waste">Kehricht</option>
     <option value="organic">Grüngut</option>
     <option value="paper">Altpapier</option>
     <option value="cardboard">Karton</option>
     <option value="incombustible">Unbrennbares / Grubengut</option>
     <option value="chipping_service">Häkseldienst</option>
     <option value="metal">Grobmetall</option>
     <option value="bulky_goods">Sperrmüll</option>
     <option value="special">Sondermüll</option>
     <option value="etram">eTram</option>
     <option value="cargotram">CargoTram</option>
  </select>
  <lable for="area">Gebiet</lable>
  <input name="area" type="text" />
  <lable for="format">Format</lable>
  <select name="format">
     <option value="ics">ICS (iCal Kalender)</option>
     <option value="json">JSON</option>
  </select>
  <div style="margin-top:40px;">
  <lable for="url"><strong>Kalender-URL zum kopieren</strong></lable>
  <input id="result" name="url" type="text" />
  </div>
</form>


Die URL kann kopiert und in einer beliebigen Kalender-Applikation abonniert werden (z.B. Outlook, Apple Kalender, Google Kalender).

## Datenbezug

Die Programmierschnittstelle (API) ist [hier im Detail dokumentiert](https://openerz.metaodi.ch).
Es handelt sich dabei um eine interaktive Dokumentation (OpenAPI/Swagger), bei der das API direkt ausprobiert werden kann.

### Daten als Kalender beziehen

Wenn du die Entsorungsdaten für deine Gemeinde als Kalender abonnieren möchtest, gehe wiefolgt vor:

1. Prüfen, ob Daten für deine Gemeinde vorliegen, aktuell gibt es Daten für folgende Gemeinden
    * Adliswil (`adliswil`)
    * Basel (`basel`)
    * Bassersdorf (`bassersdorf`)
    * Dübendorf (`duebendorf`)
    * Horgen (`horgen`)
    * Kilchberg (`kilchberg`)
    * Langnau a. A. (`langnau`)
    * Oberrieden (`oberrieden`)
    * Richterswil (`richterswil`)
    * Rüschlikon (`rueschlikon`)
    * St. Gallen (`stgallen`)
    * Thalwil (`thalwil`)
    * Uster (`uster`)
    * Wädenswil (`waedenswil`)
    * Wangen-Brüttisellen (`wangen-bruttisellen`)
    * Zürich (`zurich`)
1. Abfallarten auswählen **ACHTUNG: nicht alle Abfallarten sind in allen Gemeinden verfügbar**
    * Bioabfall (`organic`) -> Alle
    * Kehricht (`waste`) -> Alle
    * Altpapier (`paper`) -> Alle
    * Karton (`cardboard`) -> Alle
    * Unbrennbares / Grubengut (`incombustible`) -> Thalwil, Horgen, Oberrieden, Basel
    * Häkseldienst (`chipping_service`) -> Wädenswil, Basel, Oberrieden, Rüschlikon, Richterswil, Langnau a. A., Kilchberg, Horgen, Adliswil, Wangen-Brüttisellen
    * Grobmetall (`metal`) -> Thalwil, Horgen, Uster, Basel, St. Gallen
    * Sperrmüll (`bulky_goods`) -> Basel, Wangen-Brüttisellen
    * Sondermüll (`special`) -> Zürich, Thalwil, Adliswil, Horgen, Kilchberg, Langnau a. A., Rüschlikon, Richterswil, Oberrieden, Wädenswil, Uster
    * eTram (`etram`) -> Zürich
    * CargoTram (`cargotram`) -> Zürich
1. Gebiet auswählen, grössere Gemeinden sind oft in mehrere Gebiete aufgeteilt (1, 2, 3 / A, B, C / PLZ)
    * Adliswil -> keine Aufteilung
    * Basel -> Zone A-H
    * Bassersdorf -> keine Aufteilung
    * Horgen -> Zone A-D
    * Kilchberg -> Zone A und B
    * Langnau -> keine Aufteilung
    * Oberrieden -> keine Aufteilung
    * Richterswil -> Zone A und B
    * Rüschlikon -> Zone A und B
    * St. Gallen -> Gebiets-ID A-K + L Ost und L West
    * Thalwil -> Zone A-C
    * Uster -> Kehrichtkreise 1-4
    * Wädenswil -> Zone A-D
    * Wangen-Brüttisellen -> keine Aufteilung
    * Zürich -> Aufgeteilt nach Postleitzahl (PLZ)
1. Format wählen, entweder JSON (`calendar.json`) oder ICS (`calendar.ics`). 
    
Mit diesen Angaben, kann die korrekte URL zusammengesetzt werden:
 
Beispiel für *Horgen* (`region=horgen`), Zone B (`area=B`), Karton und Altpapier (`types=cardboard&types=paper`).
Der Kalender soll auf Deutsch angezeigt werden (`lang=de`).
 
Als Format für den Kalender am besten ICS (`calendar.ics`) wählen, die so entstandene URL kann direkt in der Kalenderapplikation hinzugefügt werden. Wenn die Daten im API aktualisiert werden, so erscheinen die neuen Einträge automatisch im abonnierten Kalender.
 
```
https://openerz.metaodi.ch/api/calendar.ics?region=horgen&area=B&types=cardboard&types=paper&sort=date&lang=de
```

### Daten als JSON beziehen

JSON ist gut geeignet um die Daten z.B. in einer App oder auf einer Webseite anzuzeigen.
Um die Daten als JSON zu beziehen, muss das Format in der URL auf `.json` geändert werden.
Alternativ kann auch via HTTP der Accept-Header `Accept: application/javascript` gesendet werden.

Beispiel:

```
https://openerz.metaodi.ch/api/calendar.json?region=horgen&area=B&types=cardboard&types=paper&sort=date&lang=de
```
 
## Beispiele
 
Dieses API wird von einigen Anwendungen verwendet, hier zwei Beispiele:
 
### Denise App
 
[Denise](https://www.stadt-zuerich.ch/portal/de/index/ogd/anwendungen/2022/deniseapp.html) ist eine App für iOS und Android mit dem Fokus auf der Stadt Zürich. Lass dich an die Entsorgungstermine erinnern oder schau im Kalender nach.

![Denise App](https://www.stadt-zuerich.ch/content/portal/de/index/ogd/anwendungen/2022/deniseapp/_jcr_content/mainparsys/graphic/image.1752.png/1641206645649.png)
    
### Altpapier Bot

Der [Altpapier Bot](https://www.stadt-zuerich.ch/portal/de/index/ogd/anwendungen/2020/altbapier_bot.html) ist ein Bot für den Messenger-Dienst Telegram. Ich kann einstellen, an welche Sammlung ich erinnert werden möchte und bekomme dann entsprechend eine Erinnerungsmeldung.

![Altpapier Bot](https://www.stadt-zuerich.ch/content/portal/de/index/ogd/anwendungen/2020/altbapier_bot/_jcr_content/mainparsys/graphic_394334147/image.1752.png/1600523018815.png)
