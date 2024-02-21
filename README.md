# Proyecto final DevOps

### Primeros pasos en local

### Iniciar el proyecto
``
docker-compose up --build
``

### Comprobar test
``
docker-compose exec app python -m pytest
``

### Finalizar el proyecto
``
docker-compose down
``

### Endpoints con la BBDD

##### GET
``
curl http://localhost:5000/data
``
##### POST
`` 
curl -X POST http://localhost:5000/data -H "Content-Type: application/json" -d '{"name": "value"}'
``
##### DELETE
``
curl -X DELETE http://localhost:5000/data/"ID"
``