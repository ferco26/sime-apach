FROM httpd:latest

# Eliminar la página de bienvenida
RUN rm -f /etc/httpd/conf.d/welcome.conf

# Copiar tu archivo de configuración en la ubicación correcta
COPY fercocloud.nucleo-cloud.com.conf /etc/httpd/conf.d/

# Copiar los archivos de la aplicación al directorio correcto (/var/www/html)
COPY dist/ /var/www/html/

# Exponer el puerto 80
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]


