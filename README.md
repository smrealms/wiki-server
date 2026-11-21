# SMR Wiki

This deployment runs Wiki.js v3 with PostgreSQL behind Traefik at
`wiki.smrealms.de`. The `wiki3-db` Docker volume stores the database.

## Configuration

Copy `.env.sample` to `.env`, fill in the values, and restrict its permissions.

Start the wiki with `docker compose up -d wiki`. Traefik must be connected to
the `frontend` network and forward HTTPS and WebSockets. In Wiki.js, enable
**Administration → Security → Trust X-Forwarded-* Proxy Headers**. Configure
Git storage and authentication in the administration area. Wiki.js 3 does not
configure those settings automatically.

## Backups

Run `./db_backup.sh` to create a compressed PostgreSQL dump in `backup/`.
