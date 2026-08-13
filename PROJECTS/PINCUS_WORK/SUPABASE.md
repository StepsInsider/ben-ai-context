# Pincus Work – Supabase Context

Known Supabase projects:

- `pincus-work`
- `pincus-gala`

Known project reference:

`raeqdghgcdkmevprobym`

## Database history

Migrations were developed through at least migration 014.

Previously resolved migration topics included:

- `uuid_generate_v4` / extension schema handling
- an already existing `public.baustellen` table
- adding missing columns without destroying existing data
- foreign key constraints
- `supabase db push`

## Rules

Do not assume the database is empty.

Before destructive schema changes, inspect the existing schema and migration state.

Use migrations for repeatable schema changes rather than manual production edits where practical.
