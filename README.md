Домашнє завдання до модуля “Основи операційних систем”

Завдання 1
Напишіть скрипт, який автоматично перевіряє, чи доступні певні вебсайти. Скрипт повинен використовувати команду curl для надсилання HTTP GET запитів до кожного сайту у списку та перевірки відповіді.

Завдання 2
Клонуйте FastAPI застосунок, налаштуйте і запустіть його в Docker контейнері. Перевірте правильність роботи застосунку та підключення до бази даних.

Quickstart (Docker + FastAPI + PostgreSQL)
Build & run
docker-compose up --build
Open http://localhost:8000 and click Перевірити БД — you should see a green Welcome to FastAPI! message.

Useful
Stop: docker-compose down
Logs: docker-compose logs -f web / docker-compose logs -f db
Reset DB volume: docker-compose down -v (will delete volume)
