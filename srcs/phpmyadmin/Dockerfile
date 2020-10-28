FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib \
            php7-curl php7-mbstring php7-json php7-session curl \
            php7-fpm nginx openrc

RUN curl 'https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip' > phpmyadmin.zip && \
    unzip phpmyadmin.zip && \
    rm -rf /var/www && \
    mv 'phpMyAdmin-5.0.2-all-languages' /var/www

COPY config.inc.php /var/www
RUN mkdir /etc/phpmyadmin
COPY config.inc.php /etc/phpmyadmin

EXPOSE 5000

COPY nginx.conf /etc/nginx/conf.d
RUN mkdir -p /run/nginx && \
    rm /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

CMD "/entrypoint.sh"
