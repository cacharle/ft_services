#!/bin/sh

addgroup mysql mysql

MYSQLD_DIR=/run/mysqld

mkdir $MYSQLD_DIR
chown mysql:mysql $MYSQL_DIR
