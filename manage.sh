#!/bin/bash
# manage.sh

# Espera a que la base de datos esté lista
echo "Waiting for db to be ready..."
while ! nc -z db 5432; do
  sleep 0.1
done

echo "DB ready."

# Configuración del entorno
export FLASK_ENV=development
export DATABASE_URI=postgresql://postgres:admin@db:5432/proyecto_final_DO

# Inicializa la base de datos
echo "Creating tables in DB..."
python manage.py

# Inicia la aplicación Flask
echo "Initiating APP..."
python run.py