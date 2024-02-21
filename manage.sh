#!/bin/bash
# Requires the database to be up
FLASK_ENV=development  DATABASE_URI=postgresql://postgres:admin@db_container:5432/proyecto_final_DO python manage.py


