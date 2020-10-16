FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
            php7-zlib php7-curl php7-mbstring php7-json php7-session curl

RUN curl 'https://wordpress.org/wordpress-5.5.1.tar.gz' > wordpress.tar.gz && \
    tar xf wordpress.tar.gz && \
    mv wordpress /var/www

EXPOSE 5050

CMD ["php", "-S", "0.0.0.0:5050", "-t", "/var/www"]
