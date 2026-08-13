# AI Context Index

## Zweck

Diese Datei ist der Einstiegspunkt für jeden KI-Assistenten, der mit dem Ben-AI-Kontext arbeitet.

## Reihenfolge

1. `MASTER_CONTEXT.md` – stabiler Gesamtüberblick
2. `AI_SYSTEM_PROMPT.md` – Arbeitsregeln
3. `PERSON/` – Profil und Präferenzen, wenn persönlicher Kontext relevant ist
4. `BUSINESS/` – René-Pincus-Unternehmenskontext
5. `PROJECTS/` – nur das für die Aufgabe relevante Projektwissen
6. `TECH/` – technische Umgebung und Architektur bei technischen Aufgaben
7. `DECISIONS/ADR.md` – bestehende Entscheidungen vor Änderungsvorschlägen prüfen
8. `STATUS/CURRENT_STATUS.md` – aktuellen Stand gegenüber älteren Informationen priorisieren
9. `CURRENT_TASK.md` – konkrete aktuelle Aufgabe; diese hat Vorrang für den unmittelbaren Arbeitsauftrag

## Priorität bei Konflikten

1. Explizite aktuelle Aufgabe
2. `CURRENT_STATUS.md`
3. `DECISIONS/ADR.md`
4. `AI_SYSTEM_PROMPT.md`
5. `MASTER_CONTEXT.md`
6. ältere Projekthistorie

## Grundsatz

Nicht mehr Kontext laden als für die konkrete Aufgabe erforderlich. Stabilen Kontext, Projektwissen und temporären Status getrennt behandeln.
