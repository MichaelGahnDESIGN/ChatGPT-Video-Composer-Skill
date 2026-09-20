---
name: chatgpt-video-composer
description: "Plant, erstellt und prüft nachvollziehbare Videos aus Briefings, vorhandenen Medien und HTML/CSS-Kompositionen. Nutze ihn für Motion Graphics, Produktclips, Talking-Head-Recuts und kurze Erklärvideos; Higgsfield ist nur bei ausdrücklich gewünschter KI-Generierung einzubeziehen."
---

# ChatGPT Video Composer

Dieser Skill erstellt wartbare Video-Projekte statt einmaliger, nicht nachvollziehbarer Exporte. HyperFrames bildet die lokale Render-Grundlage: Timing, Text, Layout, Übergänge und Schnittentscheidungen bleiben als Dateien prüfbar. `ffmpeg` unterstützt Schnitt, Ton und Auslieferungsformate.

## Projektstart

1. Prüfe zuerst vorhandenes Briefing, Storyboard und Quellmaterial. Bei neuen Produktionen genügen Zielgruppe, Zweck, Ausspielformat, Ziellänge und vorhandene Medien als Ausgangspunkt.
2. Lege für jede Produktion `BRIEF.md` und `STORYBOARD.md` an. Das Storyboard enthält zeitcodierte Szenen, Quellen, Audio-Hinweise sowie Freigabestatus.
3. Starte `scripts/pruefe-video-umgebung.sh`. Es installiert nichts, meldet sich nirgends an und lädt keine Daten hoch.

## Umsetzung

- Nutze eine Datei pro Szene beziehungsweise Komposition. Quellmaterial wird niemals überschrieben; bearbeitete Fassungen liegen separat im Projektordner.
- Ordne Medien verständlich: `assets/original/`, `assets/bearbeitet/` und – bei ausdrücklich freigegebenen KI-Inhalten – `assets/generiert/`.
- Für Bild, Ton, Untertitel und Texte gelten die Rechte am Ausgangsmaterial. Personen, Stimmen, Logos und vertrauliche Kundeninhalte dürfen nur nach passender Freigabe genutzt werden.
- Nutze Higgsfield ausschließlich, wenn der Auftraggeber eine generierte Einstellung oder den Anbieter ausdrücklich beauftragt hat. Lies dann [Higgsfield-Integration](references/higgsfield-integration.md).

## Prüfung und Übergabe

1. Prüfe die Komposition mit `npx hyperframes lint` und `npx hyperframes check`.
2. Rendere eine Vorschau oder ein Kontaktblatt. Kontrolliere besonders Lesbarkeit, Untertitel, Szenenwechsel, Tonpegel und Format.
3. Benenne das Ausgabemedium, verwendete Quellen und mögliche KI-generierte Sequenzen transparent. Ein lokaler Render ist keine Freigabe für Veröffentlichung oder Werbeaussagen.

Keine Zugangsdaten, Tokens, privaten Medien-URLs oder personenbezogenen Rohdaten in Projektdateien, Logs oder Dokumentation speichern.
