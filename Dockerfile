# Utilisation de l'image Python officielle comme image de base
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances dans le conteneur
COPY . /app

# Installer les dépendances nécessaires
RUN pip install flask

# Exposer le port sur lequel l'application Flask va s'exécuter
EXPOSE 8000

# Définir la commande pour exécuter l'application Flask
CMD ["python", "app.py"]
