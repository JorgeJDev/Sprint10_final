# Proyecto final DevOps

### Primeros pasos en local

##### Crear venv
``
python3 -m venv venv
``

###3# Arrancar venv
``
source venv/bin/activate
.venv1\Scripts\activate 
``

### Creación BBDD

#### Crear Tabla
``
CREATE TABLE data (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
``
#### Insertar Datos
``
INSERT INTO data (name) VALUES ('Value1'), ('Value2');
``

#### Verificar Datos
``
SELECT * FROM data;
``

##### Instalar requeriments
``
pip install -r requirements.txt
``

### Iniciar el proyecto

#### Exportar las variables de entorno para pruebas
``
export DATABASE_URI="postgresql://postgres:admin@localhost:5432/proyecto_final_DO"
``

#### Iniciar el proyect
``
python run.py
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

### Dockerización
##### Crear la imagen

``
docker build -t proyecto_final .
``


``
docker build -f Dockerfile_db -t proyecto_final__db .
``

``
docker run -p 5000:5000 -d JorgeJDev/proyecto_final
``

``
docker run --name db_container -p 5432:5432 -e POSTGRES_DB=proyecto_final_DO -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=admin -d proyecto_final__db
``





