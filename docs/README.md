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
     <option value="embrach">Embrach</option>
     <option value="gossau-zh">Gossau ZH</option>
     <option value="hombrechtikon">Hombrechtikon</option>
     <option value="horgen">Horgen</option>
     <option value="kilchberg">Kilchberg</option>
     <option value="langnau">Langnau a. A.</option>
     <option value="oberrieden">Oberrieden</option>
     <option value="richterswil">Richterswil</option>
     <option value="rueschlikon">Rüschlikon</option>
     <option value="seon">Seon</option>
     <option value="stgallen">St. Gallen</option>
     <option value="thalwil">Thalwil</option>
     <option value="uster">Uster</option>
     <option value="waedenswil">Wädenswil</option>
     <option value="wangen-bruttisellen">Wangen-Brüttisellen</option>
     <option value="wetzikon">Wetzikon</option>
     <option value="wiesendangen">Wiesendangen</option>
     <option value="winterthur">Winterthur</option>
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


Die URL kann kopiert und in einer beliebigen Kalender-Applikation abonniert werden (z.B. mit [Outlook](https://support.microsoft.com/de-de/office/importieren-oder-abonnieren-eines-kalenders-in-outlook-com-oder-outlook-im-web-cff1429c-5af6-41ec-a5b4-74f2c278e98c), [Apple Kalender](https://support.apple.com/de-ch/guide/calendar/icl1022/mac), [Google Kalender](https://support.google.com/calendar/answer/37100?hl=de&co=GENIE.Platform%3DAndroid&sjid=11250879590794395823-EU)).

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
    * Embrach (`embrach`)
    * Gossau ZH (`gossau-zh`)
    * Hombrechtikon (`hombrechtikon`)
    * Horgen (`horgen`)
    * Kilchberg (`kilchberg`)
    * Langnau a. A. (`langnau`)
    * Oberrieden (`oberrieden`)
    * Richterswil (`richterswil`)
    * Rüschlikon (`rueschlikon`)
    * Seon (`seon`)
    * St. Gallen (`stgallen`)
    * Thalwil (`thalwil`)
    * Uster (`uster`)
    * Wädenswil (`waedenswil`)
    * Wangen-Brüttisellen (`wangen-bruttisellen`)
    * Wetzikon (`wetzikon`)
    * Wiesendangen (`wiesendangen`)
    * Winterthur (`winterthur`)
    * Zürich (`zurich`)
1. Abfallarten auswählen **ACHTUNG: nicht alle Abfallarten sind in allen Gemeinden verfügbar**
    * Bioabfall (`organic`) -> Alle
    * Kehricht (`waste`) -> Alle
    * Altpapier (`paper`)
    * Karton (`cardboard`)
    * Unbrennbares / Grubengut (`incombustible`)
    * Häkseldienst (`chipping_service`)
    * Grobmetall (`metal`)
    * Sperrmüll (`bulky_goods`)
    * Sondermüll (`special`)
    * eTram (`etram`) -> Zürich
    * CargoTram (`cargotram`) -> Zürich
1. Gebiet auswählen, grössere Gemeinden sind oft in mehrere Gebiete aufgeteilt (1, 2, 3 / A, B, C / PLZ / Ost & West)
    * Adliswil -> keine Aufteilung
    * Basel -> Zone A-H
    * Bassersdorf -> keine Aufteilung
    * Dübendorf -> Kehrichtskreise 1-4
    * Embrach -> Ost und West
    * Gossau ZH -> Dorf + Aussenwachten
    * Hombrechtikon -> keine Aufteilung
    * Horgen -> Zone A-D
    * Kilchberg -> Zone A und B
    * Langnau -> keine Aufteilung
    * Oberrieden -> keine Aufteilung
    * Richterswil -> Zone A und B
    * Rüschlikon -> Zone A und B
    * Seon -> keine Aufteilung
    * St. Gallen -> Gebiets-ID A-K + L Ost und L West
    * Thalwil -> Zone A-C
    * Uster -> Kehrichtkreise 1-4
    * Wädenswil -> Zone A-D
    * Wangen-Brüttisellen -> keine Aufteilung
    * Wetzikon -> Kreise 1-4
    * Wiesendangen -> Dorf + Aussenwachten
    * Winterthur -> A + B (Altstadt) und Tour 1-9
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
 
### ZüriCityGPT
 
[ZüriCityGPT](https://zuericitygpt.ch/?q=Wann+ist+die+n%C3%A4chste+Papiersammlung+in+Wollishofen%3F) ist ein Chatbot für die Webseite der Stadt Zürich. U.a. kann dieser dank OpenERZ auch Fragen zu kommenden Entsorgungsterminen beantworten.

![ZüriCityGPT](https://github.com/user-attachments/assets/3b6c5bb1-9bd0-4faa-b0c0-77583af00842)

### Altpapier Bot

Der [Altpapier Bot](https://www.stadt-zuerich.ch/de/politik-und-verwaltung/statistik-und-daten/open-government-data/anwendungen/anwendungen-2020/altpapier_bot.html) ist ein Bot für den Messenger-Dienst Telegram. Ich kann einstellen, an welche Sammlung ich erinnert werden möchte und bekomme dann entsprechend eine Erinnerungsmeldung.

![Altpapier Bot](https://www.stadt-zuerich.ch/content/web/de/politik-und-verwaltung/statistik-und-daten/open-government-data/anwendungen/anwendungen-2020/altpapier_bot/_jcr_content/mainparsys/texttitleimage_89136/image.876.png/1600522212468.png)
