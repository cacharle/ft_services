#!/bin/sh


echo 'Building docker images'
docker build -t cacharle-ftps       srcs/ftps
docker build -t cacharle-nginx      srcs/nginx
docker build -t cacharle-wordpress  srcs/wordpress
docker build -t cacharle-phpmyadmin srcs/phpmyadmin
docker build -t cacharle-mysql      srcs/mysql
docker build -t cacharle-grafana    srcs/grafana
docker build -t cacharle-influxdb   srcs/influxdb

# minikube start
#
# eval $(minikube docker-env)


kubectl apply -f srcs/ftps/ftps.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/mysql/mysql.yaml
kubectl apply -f srcs/grafana/grafana.yaml
kubectl apply -f srcs/influxdb/influxdb.yaml

# echo 'Creating cluster'
# echo "$names" | xargs -Iname kubectl apply -f srcs/name/name.yaml

#
# minikube dashboard
