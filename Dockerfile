# Utiliza la imagen oficial de Ubuntu como base
FROM ubuntu:latest

# Actualiza el sistema e instala Node.js y npm
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Crea la carpeta angular
RUN mkdir /angular

# Establece el directorio de trabajo
WORKDIR /angular

# Copia los archivos de tu aplicación al contenedor
COPY . .

# Instala las dependencias de Node.js
RUN npm install

# Exponer el puerto 4200 para el servidor de desarrollo de Angular
EXPOSE 4200

# Comando para iniciar la aplicación Angular con el servidor de desarrollo
CMD ["npm", "start"]
