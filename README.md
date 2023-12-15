## dockerbuild
Dockerfiles para creacion de imagenes Docker

### Comando para la creacion de la imagen a partir del Dockerfile

```docker build -t <usernmae>/<imagename> .```

### Comando para la ejecución de la imagen

Para ejecutar y ver  o interactuar con la consola

```docker run -p <port>:4200 -it <image_name>```

Para ejecutar en segundo plano, no se ve la consola

```docker run -p <port>:4200 -d <image_name>```


Para asignar un nombre al contenedor 

```docker run --name <nombre contenedor> -p <port>:4200 -it <image_name>```

### Comando para subir imagen a Docker Hub

```docker push <username>/<imagename>:latest```


