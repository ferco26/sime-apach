# Usar una imagen base de Apache HTTPd
FROM httpd:latest

# Copiar el archivo de configuración del VirtualHost a la carpeta de configuración de Apache
COPY fercocloud.nucleo-cloud.com.conf /etc/httpd/conf.d/fercocloud.conf

# Eliminar la página de bienvenida de Apache
RUN rm -f /etc/httpd/conf.d/welcome.conf

# Copiar la carpeta dist a /opt/app-root/src dentro del contenedor
COPY dist/ /opt/app-root/src/

# Exponer el puerto 80
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]



