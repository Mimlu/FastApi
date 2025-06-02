#Базовый образ
FROM python:3.11-slim
#Установка зависимостей
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
#Копирование кода
COPY main.py .
#Открытие порта
EXPOSE 8000
#Команда запуска
CMD ["uvicorn", "main", "--host", "0.0.0.0", "--port", "8000"]
