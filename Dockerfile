FROM php:8.2-apache

# Install MySQL extensions
RUN docker-php-ext-install mysqli pdo_mysql

# Remove ALL enabled Apache MPM configurations
RUN rm -f /etc/apache2/mods-enabled/mpm_*.load \
          /etc/apache2/mods-enabled/mpm_*.conf

# Enable only prefork MPM
RUN a2enmod mpm_prefork

# Enable URL rewriting
RUN a2enmod rewrite

# Copy PHP project
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Configure and start Apache
CMD ["sh", "-c", "PORT=${PORT:-8080}; sed -i \"s/^Listen 80$/Listen ${PORT}/\" /etc/apache2/ports.conf; sed -i \"s#<VirtualHost \\*:80>#<VirtualHost *:${PORT}>#\" /etc/apache2/sites-available/000-default.conf; apache2-foreground"]