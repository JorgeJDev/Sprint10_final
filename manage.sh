#!/bin/bash
# manage.sh

# Espera a que la base de datos esté lista
echo "Esperando a que la base de datos esté lista..."

echo "La base de datos está lista."

# Configuración del entorno
export FLASK_ENV=development
export DATABASE_URI=postgresql://postgres:admin@db:5432/proyecto_final_DO

# Inicializa la base de datos
echo "Inicializando la base de datos..."
python manage.py

# Inicia la aplicación Flask
echo "Iniciando la aplicación Flask..."
python run.py