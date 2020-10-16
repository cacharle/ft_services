#!/bin/sh

names='
ftps
'

# nginx
# wordpress
# phpmyadmin

echo 'Building docker images'
echo "$names" | xargs -Iname docker build -t cacharle-name srcs/name

minikube start

eval $(minikube docker-env)

echo 'Creating cluster'
echo "$names" | xargs -Iname kubectl apply -f srcs/name/name.yaml


minikube dashboard
