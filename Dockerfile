FROM trafex/php-nginx:latest

USER root
# Install ekstensi DB MySQL jika dibutuhkan oleh sql/db.sql
RUN apk add --no-cache php82-mysqli php82-pdo_mysql

# Salin source code ke root direktori web Nginx
COPY --chown=nobody:nobody . /var/www/html/

USER nobody

EXPOSE 8080