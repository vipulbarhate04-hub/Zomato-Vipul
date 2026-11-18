FROM php:8.2-apache

# Install MySQL extensions required by the application
RUN docker-php-ext-install mysqli pdo_mysql

# Enable Apache URL rewriting
RUN a2enmod rewrite

# Copy the project into Apache's document root
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Configure Apache to listen on Railway's PORT (default 8080)
CMD ["bash", "-lc", "PORT=${PORT:-8080}; sed -i 's/^Listen 80$/Listen '"$PORT"'/' /etc/apache2/ports.conf; sed -i 's/<VirtualHost \*:80>/<VirtualHost *:'"$PORT"'>/' /etc/apache2/sites-available/000-default.conf; apache2-foreground"]
