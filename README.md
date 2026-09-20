# ChatGPT Video Composer Skill

Ein deutscher Codex-Skill für planbare Videoproduktion: vom Briefing über Storyboard und HTML/CSS-Komposition bis zur technisch geprüften Vorschau. Der Schwerpunkt liegt auf nachvollziehbaren, lokal renderbaren Video-Projekten – nicht auf undurchsichtigen Einmal-Exports.

## Wofür der Skill gedacht ist

- Motion Graphics, Titel, Social-Media-Clips und kurze Erklärvideos
- Produkt- und Markenclips aus freigegebenen Inhalten
- Talking-Head-Recuts mit Textkarten und Untertiteln
- wiederholbare Videoformate mit prüfbaren Szenen, Timing und Quellen

Die Standard-Pipeline nutzt [HyperFrames](https://www.npmjs.com/package/hyperframes) für HTML/CSS-basierte Kompositionen und `ffmpeg` für Medienverarbeitung. Optional kann Higgsfield einzelne generierte Bild-, Video- oder Audioelemente liefern; es wird nie automatisch gewählt.

## Struktur

```text
ChatGPT-Video-Composer-Skill/
├── SKILL.md                         # Arbeitsanleitung für Codex
├── references/
│   └── higgsfield-integration.md    # Datenschutz- und Freigaberegeln
├── scripts/
│   └── pruefe-video-umgebung.sh     # rein lesende lokale Vorabprüfung
├── docs/wiki/                       # versionierte Kopie der GitHub-Wiki
├── README.md
└── LICENSE
```

## Voraussetzungen

- Node.js mit `npx`
- `ffmpeg`
- HyperFrames wird projektbezogen über `npx hyperframes …` verwendet
- optional: Higgsfield-CLI und eine vom Nutzer interaktiv angemeldete Sitzung

Prüfen:

```bash
./scripts/pruefe-video-umgebung.sh
npx hyperframes@latest --version
```

Die Prüfung verändert weder System noch Konto und überträgt keine Dateien.

## Verwendung in Codex

1. Das Repository in einen Codex-Skill-Ordner kopieren oder als Arbeitsgrundlage verlinken.
2. Bei einem Videoauftrag `SKILL.md` laden.
3. Im Video-Projekt zuerst `BRIEF.md` und `STORYBOARD.md` erstellen.
4. Szenen und Medien in eindeutigen Dateien und Ordnern pflegen.
5. Vor einer Übergabe mindestens `npx hyperframes lint`, `npx hyperframes check` und eine sichtbare Vorschau ausführen.

Ein Beispiel für eine offene Anfrage:

> Erstelle aus diesem Briefing ein 30-sekündiges Hochformat-Video. Lege zuerst ein Storyboard zur Prüfung vor und verwende nur die beigefügten Medien.

## Higgsfield: bewusst optional

Higgsfield kommt nur zum Einsatz, wenn eine KI-generierte Einstellung oder dieser Anbieter konkret erwünscht ist. Vor Uploads oder kostenpflichtigen Generierungen gelten Freigabe, Modell-/Kostenprüfung und Datensparsamkeit. Details stehen in [references/higgsfield-integration.md](references/higgsfield-integration.md).

## Datenschutz und Rechte

- Keine Tokens, Passwörter, privaten URLs oder personenbezogenen Rohdaten in Dateien oder Logs speichern.
- Originalmedien unverändert lassen; nur Kopien bearbeiten.
- Personen, Stimmen, Logos und vertrauliche Inhalte ausschließlich innerhalb ihrer Freigabe verwenden.
- KI-generierte Inhalte bei Bedarf transparent ausweisen.

## Wiki

Die Dokumentation ist auch als GitHub-Wiki verfügbar. Die versionierte Kopie im Repository unter [docs/wiki](docs/wiki) erleichtert Review und Pull Requests. Bei Inhaltsänderungen werden beide Fassungen gemeinsam gepflegt.

## Lizenz

[MIT](LICENSE) © 2026 Michael Gahn DESIGN.
