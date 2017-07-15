FROM php:7.0.12-fpm
MAINTAINER Pitchanon Dumrongsiri <Pitchanon.d@gmail.com>

RUN docker-php-ext-install mysqli

COPY php.ini /etc/php7/conf.d/50-setting.ini
COPY php-fpm.conf /etc/php7/php-fpm.conf

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

VOLUME /code
EXPOSE 9000

CMD ["php-fpm", "-F"]

