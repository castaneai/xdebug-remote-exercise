FROM php:7.2-fpm

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

COPY . /src
WORKDIR /src

CMD ["php", "./script.php"]