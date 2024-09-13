FROM node:19.2-alpine3.16
# imagenes de alpine, vienen con directorios como /app /usr /lib por defecto


# cd app
WORKDIR /app 

COPY app.js package.json ./

# Instalar las dependencias
RUN npm install

# Comando run de la imagen
CMD [ "node", "app.js" ]