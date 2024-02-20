# Proyecto final DevOps

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

### Iniciar el proyecto

#### Exportar las variables de entorno para pruebas
``
$ export DATABASE_URI="postgresql://postgres:admin@localhost:5432/proyecto_final_DO"
``

#### Iniciar el proyect
``
py run.py
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