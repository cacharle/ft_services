FROM alpine

COPY ./src /root

RUN apk update && \
    apk upgrade && \
    apk add nginx openssh openrc && \
    mkdir -p /run/nginx && \
    mkdir -p /www && \
    echo 'bonjour' > /www/index.html && \
    rm /etc/nginx/conf.d/default.conf && \
    mv /root/ft_services.conf /etc/nginx/conf.d/ft_services.conf

EXPOSE 80
EXPOSE 443

CMD "/root/entrypoint.sh"
