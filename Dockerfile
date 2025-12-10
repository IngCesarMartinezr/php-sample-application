FROM php:8.2-apache

# Extensiones PHP necesarias
RUN docker-php-ext-install pdo pdo_mysql

# Habilitar Apache mod_rewrite
RUN a2enmod rewrite

# Copiar la aplicación
COPY . /var/www/html

# Cambiar permisos
RUN chown -R www-data:www-data /var/www/html
