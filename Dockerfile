FROM php:8.2-apache

# Install dependencies dan extension pdo_mysql & mysqli
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    && docker-php-ext-install pdo pdo_mysql mysqli curl \
    && a2enmod rewrite \
    && rm -rf /var/lib/apt/lists/*

# Copy seluruh source code ke DocumentRoot Apache
COPY . /var/www/html/

# Pastikan permission file sesuai
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80