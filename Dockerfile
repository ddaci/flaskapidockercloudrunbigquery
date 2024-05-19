# Folosește imaginea oficială Python de pe Docker Hub
FROM python:3.9

# Setează directorul de lucru
WORKDIR /app

# Copiază fișierul requirements
COPY requirements.txt requirements.txt

# Instalează dependențele
RUN pip install -r requirements.txt

# Copiază restul aplicației
COPY . .

# Copiază cheia contului de serviciu (am salvat fișierul key.json în directorul aplicației)
COPY key.json /app/key.json

# Setează variabila de mediu pentru Flask și credențialele Google
ENV FLASK_APP=app.py
ENV GOOGLE_APPLICATION_CREDENTIALS=/app/key.json

# Expune portul pe care rulează aplicația
EXPOSE 8080

# Comandă pentru a rula aplicația folosind Gunicorn
CMD ["gunicorn", "-b", ":8080", "app:app"]