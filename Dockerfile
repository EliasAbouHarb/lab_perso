# Image de base légère
FROM python:3.11-slim

# Répertoire de travail
WORKDIR /app

# Copie des dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du reste du code
COPY . .

# Port exposé (Flask par défaut)
EXPOSE 5000

# Commande de lancement
CMD ["python", "app.py"]