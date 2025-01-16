# nginx
FROM nginx:1-alpine AS nginx

COPY ./infrastructure/docker/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./app /var/www/html

# php-fpm
FROM php:8.4-fpm-alpine AS php-fpm

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY ./app /var/www/html

RUN composer install
