FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session curl && \
    curl https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip > phpmyadmin.zip && \
    unzip phpmyadmin.zip && \
    mv phpMyAdmin-5.0.2-all-languages www

EXPOSE 5000

CMD ["php", "-S", "0.0.0.0:5000", "-t", "/www"]
