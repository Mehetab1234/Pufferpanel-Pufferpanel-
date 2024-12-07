# Use official PHP image with Apache
FROM php:8.0-apache

# Install required PHP extensions
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install dependencies
COPY . /var/www/html/
WORKDIR /var/www/html
RUN composer install --no-dev --optimize-autoloader

# Expose the HTTP port
EXPOSE 80

# Set the entry point for the container
CMD ["apache2-foreground"]
