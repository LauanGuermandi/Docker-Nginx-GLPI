# GLPI Dockerfile - Lauan B Guermandi
FROM ubuntu:xenial

RUN apt-get update -yqq

RUN apt-get install -yqq php7.0 \
 php7.0-curl \
 php7.0-gd \
 php7.0-mysql \
 php7.0-cli \
 php7.0-imap \
 php7.0-ldap \
 php7.0-xmlrpc \
 php7.0-mbstring \
 php7.0-xml \
 php7.0-xmlrpc

RUN apt-get clean
