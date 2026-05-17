# 1. Usa la imagen oficial de producción de Apache basada en Debian Linux
FROM php:8.2-apache

# 2. Copia la aplicación web local al directorio donde Apache sirve los archivos en el contenedor
COPY index.html /var/www/html/

# 3. Informa a Docker que el contenedor escuchará en el puerto web estándar (80) en tiempo de ejecución
EXPOSE 80

# 4. Indica el comando por defecto para mantener el servidor web Apache corriendo en primer plano
CMD ["apache2-foreground"]