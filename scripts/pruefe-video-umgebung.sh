#!/usr/bin/env bash
# Diese Prüfung ist rein lesend: Sie installiert nichts, verändert kein Konto
# und überträgt keine Medien. Sie zeigt nur, welche lokale Grundlage vorhanden ist.

set -u

pruefe_werkzeug() {
  local werkzeug="$1"
  if command -v "$werkzeug" >/dev/null 2>&1; then
    printf 'OK: %s ist verfügbar.\n' "$werkzeug"
  else
    printf 'FEHLT: %s ist nicht verfügbar.\n' "$werkzeug"
    return 1
  fi
}

status=0
pruefe_werkzeug ffmpeg || status=1
pruefe_werkzeug npx || status=1

if command -v higgsfield >/dev/null 2>&1; then
  printf 'OPTIONAL: Higgsfield-CLI ist verfügbar.\n'
else
  printf 'OPTIONAL: Higgsfield-CLI fehlt; lokale Videoproduktion bleibt möglich.\n'
fi

exit "$status"
