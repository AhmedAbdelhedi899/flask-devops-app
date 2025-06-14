# Utilise l'image python officielle légère
FROM python:3.9-slim

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt puis installer les dépendances
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le reste des fichiers dans le conteneur
COPY . .

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Commande pour lancer l'application Flask
CMD ["python", "app.py", "--host=0.0.0.0"]
