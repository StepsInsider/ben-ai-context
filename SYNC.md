# Context Synchronisation

## Ziel

GitHub ist die zentrale, versionierte Wissensbasis. Lokale Änderungen werden regelmäßig committed und gepusht.

## Standard-Workflow

```bash
git pull --rebase origin main

# Dateien bearbeiten

git status
git add .
git commit -m "Update AI context"
git push origin main
```

## Neue Aufgabe

1. `CURRENT_TASK.md` aktualisieren.
2. Nur relevante Projektdateien ändern.
3. Änderungen prüfen.
4. Commit erstellen.
5. Nach `main` pushen.

## Aktualisierung bestehender Informationen

- stabile persönliche Informationen → `MASTER_CONTEXT.md` / `PERSON/`
- Arbeitsregeln → `AI_SYSTEM_PROMPT.md` / `PERSON/INSTRUCTIONS.md`
- Unternehmenswissen → `BUSINESS/`
- Projektwissen → `PROJECTS/`
- Technik → `TECH/`
- verbindliche Entscheidungen → `DECISIONS/ADR.md`
- wechselnder Zustand → `STATUS/CURRENT_STATUS.md`
- aktuelle Aufgabe → `CURRENT_TASK.md`

## Sicherheitsregel

Keine Passwörter, API-Keys, Tokens, `.env`-Dateien oder andere Geheimnisse in das Repository schreiben.
