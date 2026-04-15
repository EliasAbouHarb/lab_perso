FROM python:3.11-slim

WORKDIR /app

# On copie d'abord le fichier des dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# On copie tout le reste du code
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]