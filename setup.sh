#!/bin/sh

if ! [ -x `command -v docker` ]; then
	echo "Error: docker is not installed"
	exit 1
elif ! [ -x `command -v docker-compose` ]; then
	echo "Error: docker-compose is not installed"
	exit 1
fi

cd ./srcs
docker-compose --project-name ft_services up
