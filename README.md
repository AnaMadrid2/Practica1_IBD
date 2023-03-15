# Practica1_IBD
Primera practica de los alumnos de CD&amp;IA en la asignatura IBD 

Antes de empezar debemos tener la aplicación de Docker abierta

### 1- Creación del Dockerfile
>-Para empezar con la practica primero creamos un documento llamado Dockerfile sin extension. Copiamos dentro del documento lo siguiente:
```
FROM ontotext/graphdb:10.1.5

COPY *.ttl /root/graphdb-import/

EXPOSE 7200
```
>-En este Dockerfile estamos usando la imagen ontotext/graphdb en la versión 10.1.5, la segunda línea de código corresponde a la copia de los archivos .ttl, y la última línea dice que se exponga en el puerto 7200
>-En el mismo directorio en el que tenemos el Dockerfile debemos tener los documentos .ttl

### 2- Creación de la imagen
>-Primero abriremos la terminal, e iremos al directorio donde tenemos guardado el Dockerfile y los archivos .ttl
>-A continuación pondremos el siguiente comando:
```
docker build -t 'nombre_de_la_imagen' .
```
>Esto nos creara la imagen.

### 3- Lanzamiento del contenedor y del servicio
>-Para lanzar el contenedor con la imagen que hemos creado anteriormente debemos poner lo siguiente en la terminal:
```
docker run -p 7200:7200 'nombre_de_la_imagen' --name 'nombre_del_contenedor'
```
>-Ahora abriremos una pestaña en nuestro navegador y ponemos:
````
http://localhost:7200/
````

### 4- Crear repositorio RDF desde la interfaz web
>-Desde la interfaz web buscamos la opción de Create new repository, seleccionamos la opción GraphDB Repository.
>-En el campo id pondremos Data, y le damos a create

### 5- Importar archivos .ttl
>-En el menú de la izquierda seleccionamos import.
>-Nos vamos a Server files y deberíamos ver todos los archivos .ttl , le daremos a importar a todos nuestros archivos.

### 6- Comprobar que nuestra base de datos funciona
>-En el menú de la izquierda seleccionamos SPARQL, aquí podremos poner una consulta SPARQL que verifique que nuestros datos están cargados en la base de datos.


