#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
umask 077
mkdir -p backup
backup_file=$(mktemp "backup/wiki-postgres-$(date -u +%Y%m%dT%H%M%SZ)-XXXXXX.sql.gz")
trap 'rm -f "$backup_file"' EXIT
docker compose exec -T wiki-db sh -c 'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB"' | gzip > "$backup_file"
trap - EXIT
printf 'Backup saved in %s\n' "$backup_file"
