FROM ubuntu:xenial

MAINTAINER Lauan "lauanguemandi@gmail.com"

RUN apt-get update \
&& apt-get upgrade \
&& apt-get -yyq install php \
php-mysql \
php-ldap \
php-xmlrpc \
php-imap \
php-curl \
php-gd \
php-mbstring \
php-xml \
