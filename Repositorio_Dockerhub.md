Lo primero para obtener la imagen, ejecuta en su terminal

-docker pull anamadrid/img_practica 

Obtiene la imagen en su ordenador y esta imagen tendrá ese mismo nombre también, ahora debe crear un contenedor con esta nueva imagen por lo que tendrá que hacer

-docker run -p 7200:7200 --name <nombre_contenedor> anamadrid/img_practica

Ahora tenemos un contenedor nuevo en el que tenemos mapeado nuestro puerto local 7200 a GraphDB por lo que si buscamos en internet localhost:7200 se nos abrirá la aplicación GraphDB. Ahí en la página principal tendremos un repositorio activo ya creado que se llama data y si damos a importar rdf data y posteriormente a server files veremos que tenemos ciertos archivos turtle ya importados. Además podremos hacer consultas sql sobre estos archivos dando en la parte izquierda de la aplicación en SPARQL. Ahí dentro podrás escribir la consulta que quieras y dar a run para ejecutarla. 
