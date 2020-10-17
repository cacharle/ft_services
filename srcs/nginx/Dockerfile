FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add nginx openssh openrc

COPY ./src /root

RUN mkdir -p /run/nginx && \
    mkdir -p /www && \
    mv /root/index.html /www/index.html && \
    rm /etc/nginx/conf.d/default.conf && \
    mv /root/ft_services.conf /etc/nginx/conf.d/ft_services.conf

EXPOSE 22
EXPOSE 80
EXPOSE 443

CMD "/root/entrypoint.sh"
