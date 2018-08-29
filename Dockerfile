FROM php:7.0-fpm

RUN apt-get update
RUN apt-get install -y apt-utils libxml2-dev libc-client-dev libkrb5-dev && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install opcache
RUN docker-php-ext-install xmlrpc

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl && docker-php-ext-install imap

RUN apt-get update && \
    apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install gd

RUN echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini

RUN apt-get install -y libldb-dev libldap2-dev
RUN docker-php-ext-configure ldap --with-ldap=/usr/bin && docker-php-ext-install ldap
