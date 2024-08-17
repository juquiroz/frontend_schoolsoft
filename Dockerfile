# Etapa 1: Compilar la aplicación
FROM cirrusci/flutter:stable as build

# Copia el código fuente en el contenedor
COPY . /app
WORKDIR /app

# Construye la aplicación para la web
RUN flutter build web

# Etapa 2: Servir la aplicación web
FROM nginx:alpine

# Copia los archivos generados en la etapa de construcción al directorio de Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Ejecuta Nginx
CMD ["nginx", "-g", "daemon off;"]