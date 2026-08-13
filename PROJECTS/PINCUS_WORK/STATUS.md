# Pincus Work – Current Status

Status date: 13.08.2026

## Known state

Pincus Work is under active development.

Known application areas:

- Login/authentication
- Dashboard
- Baustellenverwaltung
- Zeiterfassung
- Photos/documentation
- Calendar
- KPIs
- Customers
- Employees
- Offers
- Orders
- Invoices

## Database

Supabase migrations have been developed/applied through at least 014.

## Web

Flutter Web build is working with the current development setup.

## Historical issues already encountered

- missing `uuid_generate_v4` handling
- pre-existing `baustellen` relation during migrations
- separate Docker/FastAPI backend missing `python-multipart`
- separate PostgreSQL container restart/exit problem

These are historical issues. Do not treat them as current failures without fresh evidence.

## Current priorities

1. Continue production hardening.
2. Consolidate modules.
3. Connect data and business workflows.
4. Stabilize deployment.
5. Continue automation of office and construction-site processes.
