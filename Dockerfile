FROM php:8.2-apache

# Install MySQL extensions
RUN docker-php-ext-install mysqli pdo_mysql

# Disable conflicting Apache MPM modules
RUN a2dismod mpm_event || true
RUN a2dismod mpm_worker || true

# Enable the correct MPM and rewrite
RUN a2enmod mpm_prefork rewrite

# Copy project files
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Configure Railway port and start Apache
CMD ["sh", "-c", "PORT=${PORT:-8080}; sed -i \"s/^Listen 80$/Listen ${PORT}/\" /etc/apache2/ports.conf; sed -i \"s#<VirtualHost \\*:80>#<VirtualHost *:${PORT}>#\" /etc/apache2/sites-available/000-default.conf; apache2-foreground"]