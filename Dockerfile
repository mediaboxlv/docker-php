FROM php:7.4.28-fpm
LABEL maintainer="rolands@mediabox.lv"
ENV PHPVER 7.4
ARG virtualroot=/var/www/pub/site

ADD version .

# Setup Volume
VOLUME ["${virtualroot}"]
WORKDIR ${virtualroot}

#COPY ./ ${virtualroot}
# this is dev, we need 777 :) 
RUN chmod -R 777 ${virtualroot}