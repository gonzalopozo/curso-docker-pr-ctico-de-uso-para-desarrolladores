FROM --platform=linux/arm64 node:19.2-alpine3.16
# imagenes de alpine, vienen con directorios como /app /usr /lib por defecto

# cd app
WORKDIR /app 

COPY package.json ./

# Instalar las dependencias
RUN npm install

COPY . .

# Realizar testing
RUN npm run test

# Eliminar archivos y directorios no necesarios en producción
RUN rm -rf test && rm -rf node_modules

# Unicamente instalamos las dependencias de producción
RUN npm install --prod

# Comando run de la imagen
CMD [ "node", "app.js" ]