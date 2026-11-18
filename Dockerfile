FROM php:8.2-apache

# Install MySQL extensions
RUN docker-php-ext-install mysqli pdo_mysql

# Enable Apache rewrite
RUN a2enmod rewrite

# Copy project
COPY . /var/www/html/

# Permissions
RUN chown -R www-data:www-data /var/www/html

# Start Apache on Railway's assigned port
CMD ["sh", "-c", "PORT=${PORT:-8080}; sed -i \"s/^Listen 80$/Listen ${PORT}/\" /etc/apache2/ports.conf; sed -i \"s#<VirtualHost \\*:80>#<VirtualHost *:${PORT}>#\" /etc/apache2/sites-available/000-default.conf; apache2-foreground"]