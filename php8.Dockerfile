FROM php:8.0.16-fpm
LABEL maintainer="rolands@mediabox.lv"
ENV PHPVER 8.0
ARG virtualroot=/var/www/pub/site

ADD version .

# Setup Volume
VOLUME ["${virtualroot}"]
WORKDIR ${virtualroot}

#COPY ./ ${virtualroot}
RUN chmod -R 777 ${virtualroot}