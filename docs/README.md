OpenERZ
=======

Die Programmierschnittstelle (API) mit den Entsorgungsdaten ist hier: https://openerz.metaodi.ch

## Daten als Kalender beziehen

Wenn sie die Entsorungsdaten für ihre Gemeinde als Kalender abonnieren möchten, gehen sie wiefolgt vor.

1. Prüfen, ob Daten für Ihre Gemeinde vorliegen, aktuell gibt es Daten für folgende Gemeinden
    * Adliswil
    * Basel
    * Horgen
    * Kilchberg
    * Langnau
    * Oberrieden
    * Richterswil
    * Rüschlikon
    * St. Gallen
    * Thalwil
    * Uster
    * Wädenswil
    * Zürich
1. Abfallarten auswählen *ACHTUNG: nicht alle Abfallarten sind in allen Gemeinden verfügbar*
    * Bioabfall (organic) -> 
    * Kehricht (waste) -> 
    * Altpapier (paper) ->
    * Karton (cardboard) ->
    * Unbrennbares / Grubengut (incombustible) ->
    * Häkseldienst (chipping_service) ->
    * Grobmetall (metal) ->
    * Sperrmüll (bulky_goods) ->
    * Sondermüll (special) -> 
    * eTram (etram) -> Zürich
    * CargoTram (cargotram) -> Zürich
1. Gebiet auswählen, grössere Gemeinden sind meistens in Gebiete aufgeteilt (1, 2, 3 / A, B, C / PLZ)
    * Uster: 1, 2, 3, 4
    * Zürich: Aufteilung nach PLZ
    * Thalwil: A, B, C
    
    
 Mit diesen Angaben, kann die korrekte URL zusammengesetzt werden:
 
 Beispiel für *Horgen* (`region=horgen`), Zone B (`area=B`), Karton und Altpapier (`types=cardboard&types=paper`).
 Der Kalender soll auf Deutsch angezeigt werden (`lang=de`).
 
 ```
 https://openerz.metaodi.ch/api/calendar.json?region=horgen&area=B&types=cardboard&types=paper&sort=date&lang=de
 ```
