# Quickstart (Docker + FastAPI + PostgreSQL)

## Build & run
```bash
docker-compose up --build
```

Open http://localhost:8000 and click **Перевірити БД** — you should see a green `Welcome to FastAPI!` message.

## Useful
- Stop: `docker-compose down`
- Logs: `docker-compose logs -f web` / `docker-compose logs -f db`
- Reset DB volume: `docker-compose down -v` (will delete volume)
