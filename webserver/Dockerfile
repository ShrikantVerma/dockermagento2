FROM ubuntu:16.04


RUN apt-get update \
    && apt-get -y install nginx supervisor \
    && apt-get update \
    && apt-get install -y software-properties-common python-software-properties \
    && apt-get install -y language-pack-en-base \
    && LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php \
    && apt-get update \
    && apt-get -y install php7.2 php7.2-curl php7.2-intl php7.2-gd php7.2-dom php7.2-iconv php7.2-xsl php7.2-mbstring php7.2-ctype php7.2-zip php7.2-pdo php7.2-xml php7.2-bz2 php7.2-calendar php7.2-exif php7.2-fileinfo php7.2-json php7.2-mysqli php7.2-mysql php7.2-posix php7.2-tokenizer php7.2-xmlwriter php7.2-xmlreader php7.2-phar php7.2-soap php7.2-mysql php7.2-fpm php7.2-bcmath
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY default /etc/nginx/sites-available/
RUN mkdir -p /run/php && touch /run/php/php7.2-fpm.sock && touch /run/php/php7.2-fpm.pid
RUN chmod -R 777 /run/php
CMD ["/usr/bin/supervisord"]
EXPOSE 80 443
