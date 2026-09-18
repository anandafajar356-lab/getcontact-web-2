FROM trafex/php-nginx:latest

# Salin source code langsung ke document root Nginx
COPY --chown=nobody:nobody . /var/www/html/

EXPOSE 8080