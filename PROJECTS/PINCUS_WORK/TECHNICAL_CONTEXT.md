# Pincus Work – Technical Context

## Source of truth

The application source code is maintained in `StepsInsider/pincus-work-app` on branch `main`.

GitHub repository: https://github.com/StepsInsider/pincus-work-app

The source repository is authoritative for implementation details. This context repository stores the higher-level technical and decision context used by AI assistants.

## Framework

- Flutter
- Dart
- Flutter Web
- Android

Current `pubspec.yaml` declares Dart SDK `>=3.8.0 <4.0.0`.

## Dependencies confirmed in the source repository

- `supabase_flutter: ^2.8.3`
- `image_picker: ^1.1.2`
- `flutter_riverpod: ^3.3.2`
- `go_router: ^14.1.0`
- `freezed_annotation: ^3.1.0`
- `json_annotation: ^4.12.0`
- `get_it: ^9.2.1`
- `shared_preferences: ^2.5.5`
- `http: ^1.6.0`
- `freezed: ^3.2.5`
- `json_serializable: ^6.10.0`
- `build_runner: ^2.6.0`

## Architecture

Target architecture:

- Clean Architecture
- Repository Pattern
- MVVM
- Riverpod for state management
- GoRouter for navigation
- Material 3
- Mobile First
- Responsive UI

## Backend

Supabase is the backend platform.

- PostgreSQL database
- Supabase Auth
- Supabase Storage

Known Supabase projects include `pincus-work` and `pincus-gala`.

Known project reference: `raeqdghgcdkmevprobym`.

## Hosting

Netlify is used for Flutter Web hosting.

Standard release build:

```bash
flutter build web --release
```

Deployment:

```bash
npx netlify deploy --dir=build/web
```

Netlify Functions are not required as the primary backend layer.

## Repository structure observed

The application repository currently contains at least:

- `android/`
- `ios/`
- `linux/`
- `macos/`
- `lib/`
- `assets/`
- `docs/`
- `.github/`
- `.vscode/`
- `netlify.toml`
- `pubspec.yaml`
- `README.md`

## Implementation rule

When modifying Pincus Work, inspect the actual source repository before assuming that a module, table, service or architecture component exists. The AI context is architectural guidance; the source repository is the implementation source of truth.
