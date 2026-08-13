# Architecture Decision Record

## ADR-001 – Flutter bleibt Grundlage

Status: Accepted

Pincus Work wird auf Flutter weiterentwickelt.

Begründung:
- bestehende Codebasis
- Web-Unterstützung
- Android-Unterstützung
- bestehende Komponenten

Keine Migration ohne konkreten technischen Grund.

## ADR-002 – Supabase als Backend

Status: Accepted

Supabase bleibt Backend- und Datenplattform.

Verwendet werden insbesondere:

- PostgreSQL
- Supabase Auth
- Supabase Storage

## ADR-003 – Riverpod

Status: Accepted

Riverpod bleibt State-Management-Lösung.

## ADR-004 – GoRouter

Status: Accepted

GoRouter bleibt die Routing-Lösung.

## ADR-005 – Clean Architecture

Status: Accepted

Clean Architecture bleibt die architektonische Grundlage.

## ADR-006 – Repository Pattern

Status: Accepted

Datenzugriff wird über Repository-Abstraktionen strukturiert.

## ADR-007 – MVVM

Status: Accepted

MVVM wird als Präsentations- und Zustandsstruktur verwendet.

## ADR-008 – Material 3

Status: Accepted

Material 3 bleibt UI-Grundlage.

## ADR-009 – Mobile First und Responsive Design

Status: Accepted

Neue Oberflächen werden Mobile First und responsive entwickelt.

## ADR-010 – Netlify

Status: Accepted

Netlify wird für Flutter-Web-Hosting verwendet.

Netlify Functions sind nicht als notwendige primäre Backend-Schicht vorgesehen.

## ADR-011 – Source of Truth

Status: Accepted

Das Repository `StepsInsider/pincus-work-app` ist die technische Implementierungsquelle.

Das Repository `StepsInsider/ben-ai-context` ist die zentrale Wissens- und Kontextbasis.

Die beiden Rollen werden nicht vermischt.
