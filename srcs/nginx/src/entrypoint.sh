#!/bin/sh


rm /etc/nginx/conf.d/default.conf
mv /root/ft_services.conf /etc/nginx/conf.d/ft_services.conf

nginx -g "daemon off;"
