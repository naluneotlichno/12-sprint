
# 📦 **Go Traker – Трекер Посылок на Go**

**Go Traker** – это **Go-приложение**, предназначенное для **отслеживания посылок**. Оно позволяет получать актуальную информацию о статусе доставки, используя различные API служб доставки.

## 🛠 **Функциональность**

- **Отслеживание посылок**: Получение текущего статуса доставки по трекинг-номеру.
- **Поддержка нескольких служб доставки**: Интеграция с различными API для получения информации о посылках.
- **Хранение истории запросов**: Сохранение информации о ранее отслеженных посылках в базе данных.

## 🚀 **Технологии**

- **Язык программирования**: Go
- **База данных**: SQLite (файл `tracker.db`)
- **Контейнеризация**: Docker (файл `dockerfile`)

## 📂 **Структура проекта**

- `.github/workflows/` – файлы для настройки CI/CD.
- `dockerfile` – инструкция для сборки Docker-образа.
- `go.mod` и `go.sum` – файлы для управления зависимостями Go.
- `main.go` – основной файл приложения.
- `parcel.go` – логика работы с посылками.
- `parcel_test.go` – тесты для проверки функциональности.
- `tracker.db` – база данных для хранения информации о посылках.

## 🏃‍♂️ **Запуск проекта**

1. **Клонируйте репозиторий:**
   ```bash
   git clone https://github.com/naluneotlichno/12-sprint.git
   cd 12-sprint
   ```

2. **Установите зависимости:**
   ```bash
   go mod download
   ```

3. **Запустите приложение:**
   ```bash
   go run main.go
   ```

## 🐳 **Запуск с использованием Docker**

1. **Сборка Docker-образа:**
   ```bash
   docker build -t parcel-tracker .
   ```

2. **Запуск контейнера:**
   ```bash
   docker run -d -p 8080:8080 parcel-tracker
   ```

## 🧪 **Тестирование**

Для запуска тестов выполните:
```bash
go test ./...
```
