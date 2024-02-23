# Pull de la imagen de python
FROM python:3.8-alpine

# copiamos requeriments.txt en el archivo
COPY ./requirements.txt /app/requirements.txt

# cambiamos el directorio
WORKDIR /app

# Instalamos todas las dependencias
RUN pip install -r requirements.txt

# Copiamos todo el contenido del local hacia la imagen
COPY . /app

# Código de arranque para la imagen
CMD python manage.py && python run.py