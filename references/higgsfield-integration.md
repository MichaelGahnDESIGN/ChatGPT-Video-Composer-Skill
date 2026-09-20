# Higgsfield-Integration

Higgsfield ergänzt die lokale Pipeline nur als optionaler Lieferant einzelner Medien. Die Videostruktur, Montage, Untertitel und der finale Render verbleiben im lokalen Projekt.

## Geeignete Fälle

- Es fehlt eine kurze B-Roll-, Stimmungs- oder Übergangseinstellung.
- Ein freigegebenes Startbild soll bewegt werden.
- Eine Produktwerbung, UGC-Variante oder eine generative Einstellung ist ausdrücklich beauftragt.

Higgsfield ist nicht nötig für gewöhnlichen Schnitt, Untertitel, Audio-Mix oder als Ersatz für bereitgestelltes Originalmaterial.

## Sichere Arbeitsfolge

1. Beschreibe die Einstellung vorab im Storyboard: Zweck, Länge, Seitenverhältnis, gewünschter Stil und Schnittposition.
2. Prüfe nur lesend `higgsfield account status`. Falls keine Sitzung vorhanden ist, muss der Nutzer sich selbst interaktiv anmelden.
3. Prüfe Modell und Kostenschätzung mit der aktuellen CLI, bevor ein kostenpflichtiger Auftrag ausgelöst wird. Wähle die kürzeste passende Dauer und Auflösung.
4. Lade ausschließlich dafür freigegebene Dateien hoch. Für Gesichter, Stimmen, private Orte oder vertrauliche Unterlagen braucht es eine eindeutige Freigabe für den Generierungszweck.
5. Speichere ein Ergebnis unter `assets/generiert/`. Dokumentiere in `ASSET-NACHWEIS.md` Modellfamilie, Erstellungsdatum, Prompt-Zusammenfassung und Freigabestatus – keine Job-IDs, signierten URLs oder persönlichen Daten.
6. Prüfe die Einstellung im Endformat und kennzeichne KI-generierte Bild- oder Tonbestandteile bei Übergabe, Plattformvorgaben oder Kontextbedarf transparent.

Aktuelle Modell-IDs und Parameter dürfen nicht aus dieser Datei abgeleitet werden; sie werden stets über die installierte Higgsfield-CLI geprüft.
