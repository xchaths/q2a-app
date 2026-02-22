FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN a2enmod rewrite

COPY ./q2a-src /var/www/html/

RUN chown -R www-data:www-data /var/www/html/