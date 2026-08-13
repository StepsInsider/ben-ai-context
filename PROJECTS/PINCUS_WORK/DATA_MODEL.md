# Pincus Work – Data Model

The data model is PostgreSQL/Supabase based.

## Core domains

- companies
- profiles / users
- customers
- baustellen
- employees
- time tracking
- offers
- orders
- invoices
- photos / documentation

## Roles

- Admin
- Bauleiter
- Vorarbeiter
- Mitarbeiter

## Time tracking

The target workflow covers:

- Arbeitsbeginn
- Pause
- Arbeitsende
- optional GPS information
- export for payroll/accounting processes

## Security

Supabase Row Level Security is part of the architecture.

Data access should follow least privilege and role/company boundaries.

## Migration principle

Migrations must be idempotent where practical and must account for already existing objects. Existing production data must not be destroyed by convenience migrations.
