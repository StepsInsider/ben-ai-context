# Pincus Work – Architecture

## Application

- Flutter
- Dart
- Flutter Web
- Android
- Material 3
- Mobile First
- Responsive Design

## Application architecture

- Clean Architecture
- Repository Pattern
- MVVM
- Riverpod
- GoRouter

## Backend

Supabase is the central backend platform.

- Supabase Auth
- PostgreSQL
- Supabase Storage
- Edge/server functions only where they provide a concrete requirement

## Hosting

Netlify is used for Flutter Web hosting.

Netlify Functions are not the required backend layer.

## Design principle

Prefer incremental changes that preserve the existing architecture. Do not introduce a new framework or backend service without a concrete technical or business reason.
