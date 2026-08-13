# Pincus Work – Development Context

## Development principles

- Production-ready code
- Material 3
- Mobile First
- Responsive
- Clean Architecture
- Repository Pattern
- MVVM
- Riverpod
- Supabase best practices

## Flutter

Web build:

```bash
flutter build web --release
```

## Deployment

Netlify deployment can use:

```bash
npx netlify deploy --dir=build/web
```

## Preferred troubleshooting sequence

1. Inspect the actual error.
2. Check current branch and working tree.
3. Inspect the relevant file/configuration.
4. Apply the smallest working fix.
5. Run the relevant formatter/analyzer/test/build.
6. Commit only after verification.

## AI coding rule

Do not rewrite large parts of the application when a focused change fixes the problem. Preserve existing APIs, database contracts and architecture unless the task explicitly requires a redesign.
