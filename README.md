# Резюме - Анастасия Оленева

![Сборка резюме](https://github.com/AnastasiaOleneva12/CV/actions/workflows/main.yml/badge.svg)

Это репозиторий с моим резюме, написанным на LaTex и автоматически собираемым с помощью Docker и GitHub Actions.

---

## О проекте
- Автоматическая сборка через Docker
- Автоматизация CI/CD через GitHub Actions
- Результат - 'main.pdf' в директории 'CV'

---

## Используемые технологии

- LaTex
- Docker
- GitHub Actions

---

## Структура проекта

```bash
.
├── CV/
│   ├── main.tex           # Основной .tex файл
│   ├── cvbg.png           # Фоновое изображение
│   └── дополнительные .sty / .cls файлы
├── Dockerfile             # Сценарий сборки Docker-образа
├── choose_system.py       # Скрипт для выбора системы (по заданию)
├── .github/
│   └── workflows/
│       └── main.yml       # CI/CD сценарий GitHub Actions
├── README.md              # Описание проекта (этот файл)
```

---

## Сборка с помощью Docker

```bash
#Собрать Docker-образ
docker build -t resume .

#Запустить контейнер и собрать резюме
docker run --rm -v $(pwd)/CV:/cv resume
```

После выполнения PDF-файл main.pdf появится в папке CV.

---

## CI/CD через GitHub Actions

Резюме автоматически пересобирается при каждом коммите в репозиторий.
Файл конфигурации GitHub Actions: .github/workflows/main.yml
Сборка доступна во вкладке Actions на GitHub.

## Автор

Оленева Анастасия Александровна
КНАД 242
- Email: anasalekoleneva@edu.hse.ru
- GitHub: AnastasiaOleneva12 (https://github.com/AnastasiaOleneva12)
- Telegram: @nastusiaal (https://t.me/nastusiaal)