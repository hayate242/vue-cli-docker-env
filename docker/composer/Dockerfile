FROM composer:1.10.7
WORKDIR /app

ENV COMPOSER_HOME /tmp
ENV PATH $PATH:/tmp/vendor/bin

RUN composer config -g repo.packagist composer https://repo.packagist.org