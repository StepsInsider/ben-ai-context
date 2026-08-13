# BEN AI BOOTSTRAP

Version: 1.0
Stand: 13.08.2026

## Zweck

Diese Datei ist der zentrale Einstiegspunkt für einen KI-Assistenten, der mit dem Kontext von Ben Sparenberg arbeitet.

Der Kontext ist providerunabhängig und kann für ChatGPT, Claude, Gemini, Grok, Codex oder andere KI-Assistenten verwendet werden.

## Ladeprinzip

Nicht automatisch den gesamten Kontext laden.

Zuerst lesen:

1. `MASTER_CONTEXT.md`
2. `AI_SYSTEM_PROMPT.md`
3. `STATUS/CURRENT_STATUS.md`
4. `CURRENT_TASK.md`

Danach abhängig von der Aufgabe:

- `PERSON/` für persönlichen oder beruflichen Kontext
- `BUSINESS/` für René Pincus
- `PROJECTS/` für konkrete Projekte
- `TECH/` für technische Umgebung
- `DECISIONS/ADR.md` für verbindliche Entscheidungen
- `PROVIDERS/` für KI-Anbieter-spezifische Informationen

## Priorität

Bei widersprüchlichen Informationen gilt:

1. explizite aktuelle Aufgabe
2. aktueller Status
3. verbindliche Entscheidungen
4. System Prompt
5. Master Context
6. Projektdokumentation
7. ältere Historie

## Technische Wahrheitsquelle

Bei Pincus Work gilt:

Das Repository `StepsInsider/pincus-work-app` ist die technische Implementierungsquelle.

Der KI-Kontext beschreibt Architektur, Entscheidungen, Ziele und bekannten Status.

Der Quellcode entscheidet darüber, was tatsächlich implementiert ist.

Vor technischen Änderungen daher zuerst den tatsächlichen Repository-Zustand prüfen.

## Arbeitsweise

Die zentrale Arbeitsregel lautet:

„die schnellste funktionierende Lösung zuerst“

und:

„kopierfertige vollständige Befehlsketten statt kleinteiliger Theorie“

Bei technischen Aufgaben:

1. aktuelle Situation prüfen
2. wahrscheinlichste Ursache bestimmen
3. schnellste funktionierende Lösung wählen
4. vollständige Befehle oder Dateien liefern
5. Ergebnis verifizieren
6. erst danach theoretische Hintergründe erläutern

Bestehende funktionierende Systeme nicht ohne Grund umbauen.

Keine unnötigen Technologie- oder Architekturwechsel.

## Aktueller Hauptfokus

Pincus Work ist das zentrale langfristige Softwareprojekt.

Ziel ist ein integriertes ERP-/CRM-/Baustellenmanagement-System für René Pincus – Baum- & Landschaftspflege.

Langfristig sollen unter anderem verbunden werden:

- Kunden
- Mitarbeiter
- Baustellen
- Zeiterfassung
- Fotos
- Dokumentation
- Kalender
- Angebote
- Aufträge
- Rechnungen
- Fahrzeuge
- Maschinen
- Lager
- Berichte
- Kommunikation
- Büroprozesse
- Recruiting
- Marketing
- KI
- Automatisierung

## Technische Basis

- Flutter
- Dart
- Supabase
- PostgreSQL
- Riverpod
- GoRouter
- Clean Architecture
- Repository Pattern
- MVVM
- Material 3
- Mobile First
- Responsive Design
- Netlify
- Git/GitHub

## Sicherheitsregel

Keine Passwörter, API-Keys, Tokens, `.env`-Dateien oder andere Geheimnisse in dieses Repository schreiben.

Sensible persönliche Daten gehören nicht in ein öffentliches Repository.

## Aktualisierungsregel

Nach bedeutenden Änderungen:

1. aktuellen Projektstatus prüfen
2. relevante Kontextdateien aktualisieren
3. Git-Status prüfen
4. committen
5. nach `main` pushen

## Aktuelle Aufgabe

Die Datei `CURRENT_TASK.md` enthält ausschließlich den unmittelbaren Arbeitsauftrag.

Diese Datei hat für die aktuelle Aufgabe Vorrang vor allgemeiner Projekthistorie.
