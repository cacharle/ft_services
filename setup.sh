#!/bin/sh

# names='
# ftps
# '

# nginx
# wordpress
# phpmyadmin


echo 'Building docker images'
# docker build -t cacharle-ftps       srcs/ftps
# docker build -t cacharle-nginx      srcs/nginx
docker build -t cacharle-wordpress  srcs/wordpress
docker build -t cacharle-phpmyadmin srcs/phpmyadmin
docker build -t cacharle-mysql      srcs/mysql

# minikube start
#
# eval $(minikube docker-env)


# kubectl apply -f srcs/ftps/ftps.yaml
# kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/mysql/mysql.yaml

# echo 'Creating cluster'
# echo "$names" | xargs -Iname kubectl apply -f srcs/name/name.yaml

#
# minikube dashboard
