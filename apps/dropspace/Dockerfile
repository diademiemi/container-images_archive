FROM ubuntu:22.04

ARG VERSION

ENV TZ=UTC

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update

RUN apt-get install -y \
    software-properties-common

RUN add-apt-repository ppa:ondrej/php

RUN apt-get update

RUN apt-get install -y \
    composer \
    php8.1-xml \
    php8.1-gd \
    php8.1-curl \
    php8.1-mysql \
    nodejs \
    npm \
    git \
    cron

RUN mkdir /app

RUN git clone https://github.com/leventdev/dropspace.git /app/dropspace

WORKDIR /app/dropspace

RUN git checkout "${VERSION}"

RUN composer install

RUN npm install

COPY env /app/dropspace/.env

COPY dropspace-cron /etc/cron.d/dropspace-cron

RUN npm run prod

RUN chown -R www-data:www-data /app/dropspace

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
