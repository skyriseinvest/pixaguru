FROM php:7.4-apache

# Install necessary PHP extensions
RUN apt-get update && \
    apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd mysqli

# Copy the application code
COPY . /var/www/html

RUN chmod -R 755 /var/www/html
# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html

# Other Apache configurations, if any
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Enable mod_rewrite for CodeIgniter
RUN a2enmod rewrite
