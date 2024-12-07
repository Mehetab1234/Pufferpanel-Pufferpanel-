FROM pufferpanel/pufferpanel:latest

WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# Install dependencies
RUN if [ -f composer.json ]; then composer install --no-dev --optimize-autoloader; else echo "No composer.json found. Skipping composer install."; fi

EXPOSE 8080
