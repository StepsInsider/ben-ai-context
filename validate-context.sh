#!/bin/bash

set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
ERRORS=0

echo "========================================"
echo " BEN AI CONTEXT VALIDATOR"
echo "========================================"
echo

check_file() {
    if [ -f "$ROOT/$1" ]; then
        echo "OK   $1"
    else
        echo "FAIL $1"
        ERRORS=$((ERRORS + 1))
    fi
}

echo "=== Pflichtdateien ==="

check_file "AI_BOOTSTRAP.md"
check_file "IMPORT_PROMPT.md"
check_file "MASTER_CONTEXT.md"
check_file "AI_SYSTEM_PROMPT.md"
check_file "AI_CONTEXT_INDEX.md"
check_file "CURRENT_TASK.md"
check_file "SYNC.md"
check_file "DECISIONS/ADR.md"
check_file "STATUS/CURRENT_STATUS.md"
check_file "BUSINESS/RENE_PINCUS.md"
check_file "PERSON/INSTRUCTIONS.md"
check_file "PROJECTS/PINCUS_WORK/README.md"
check_file "PROJECTS/PINCUS_WORK/CONTEXT.md"
check_file "PROJECTS/PINCUS_WORK/TECHNICAL_CONTEXT.md"
check_file "PROJECTS/PINCUS_WORK/STATUS.md"
check_file "PROJECTS/PINCUS_WORK/REPOSITORY_STATUS.md"

echo
echo "=== Git Repository ==="

if [ -d "$ROOT/.git" ]; then
    echo "OK   Git repository"
else
    echo "FAIL Git repository fehlt"
    ERRORS=$((ERRORS + 1))
fi

echo
echo "=== Secret Scan ==="

SECRET_PATTERN='(api[_-]?key|secret[_-]?key|access[_-]?token|password[[:space:]]*[:=]|BEGIN PRIVATE KEY|PRIVATE_KEY|SUPABASE_SERVICE_ROLE_KEY|OPENAI_API_KEY|ANTHROPIC_API_KEY|GOOGLE_API_KEY)'

if grep -RniE "$SECRET_PATTERN" "$ROOT" \
    --exclude-dir=.git \
    --exclude="validate-context.sh" \
    >/tmp/ben-ai-context-secret-scan.txt 2>/dev/null; then

    echo "WARN Mögliche Secret-Begriffe gefunden:"
    cat /tmp/ben-ai-context-secret-scan.txt
    echo
    echo "Bitte Treffer manuell prüfen."

else
    echo "OK   Keine offensichtlichen Secrets gefunden"
fi

echo
echo "=== Private Dateien ==="

PRIVATE_FOUND=0

for pattern in \
    ".env" \
    ".env.*" \
    "*.pem" \
    "*.key" \
    "*.p12" \
    "*.pfx"
do
    if find "$ROOT" \
        -path "$ROOT/.git" -prune -o \
        -type f -name "$pattern" -print \
        | grep -q .; then

        echo "WARN Private Datei gefunden: $pattern"
        PRIVATE_FOUND=1
    fi
done

if [ "$PRIVATE_FOUND" -eq 0 ]; then
    echo "OK   Keine typischen privaten Dateien gefunden"
fi

echo
echo "=== Git Status ==="

cd "$ROOT"

git status --short

echo
echo "========================================"

if [ "$ERRORS" -eq 0 ]; then
    echo " VALIDIERUNG ERFOLGREICH"
    echo "========================================"
    exit 0
else
    echo " VALIDIERUNG FEHLGESCHLAGEN"
    echo " Fehler: $ERRORS"
    echo "========================================"
    exit 1
fi
