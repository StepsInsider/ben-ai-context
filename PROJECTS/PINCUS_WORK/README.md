# Pincus Work – Project Context

Quelle des technischen Ist-Zustands: `StepsInsider/pincus-work-app`.

## Verifizierter Stand

Das Repository ist ein Flutter-Projekt mit dem Namen `pincus_work` und der Beschreibung `Pincus Work ERP System`.

Der aktuelle Repository-Baum enthält unter anderem:
- `lib/config`
- `lib/core`
- `lib/data`
- `lib/domain`
- `lib/features`
- `lib/models`
- `lib/presentation`
- `lib/providers`
- `lib/repositories`
- `lib/screens`
- `lib/services`
- `lib/theme`

`lib/main.dart` verifiziert:
- Flutter Material
- `flutter_riverpod`
- Supabase-Initialisierung über `SupabaseConfig.initialize()`
- `ProviderScope`
- `MaterialApp.router`
- zentraler `appRouter`
- `AppTheme.light`

`pubspec.yaml` verifiziert:
- Dart SDK `>=3.8.0 <4.0.0`
- `supabase_flutter ^2.8.3`
- `flutter_riverpod ^3.3.2`
- `go_router ^14.1.0`
- `image_picker ^1.1.2`
- `freezed_annotation ^3.1.0`
- `json_annotation ^4.12.0`
- `get_it ^9.2.1`
- `shared_preferences ^2.5.5`
- `http ^1.6.0`

## Dokumentationsregel

Nur tatsächlich aus dem Repository oder einer verifizierten Quelle belegte technische Fakten als Ist-Zustand behandeln. Bisherige Planungen und Erinnerungen müssen als geplant bzw. historisch gekennzeichnet werden, wenn sie nicht im aktuellen Code bestätigt sind.

## Load order

1. `MASTER_CONTEXT.md`
2. `AI_SYSTEM_PROMPT.md`
3. `PROJECTS/PINCUS_WORK/README.md`
4. `PROJECTS/PINCUS_WORK/ARCHITECTURE.md`
5. `PROJECTS/PINCUS_WORK/DATA_MODEL.md`
6. `PROJECTS/PINCUS_WORK/SUPABASE.md`
7. `PROJECTS/PINCUS_WORK/DEVELOPMENT.md`
8. `PROJECTS/PINCUS_WORK/STATUS.md`
