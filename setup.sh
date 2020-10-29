#!/bin/sh

build_image () {
    echo "=============================================== Building $1"
    docker build -t "$1-service" "srcs/$1"
    echo
}

create_service () {
    echo "=============================================== Creating Service $1"
    kubectl apply -f "srcs/$1/$1.yaml"
    echo
}


echo '--- Building docker images'
build_image ftps
build_image nginx
build_image wordpress
build_image phpmyadmin
build_image mysql
build_image grafana
build_image influxdb

# minikube start
# eval $(minikube docker-env)


create_service ftps
create_service nginx
create_service wordpress
create_service phpmyadmin
create_service mysql
create_service grafana
create_service influxdb

# minikube dashboard
