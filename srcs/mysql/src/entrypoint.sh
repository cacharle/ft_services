#!/bin/sh

# addgroup mysql mysql
#
# MYSQLD_DIR=/run/mysqld
#
# mkdir $MYSQLD_DIR
# chown mysql:mysql $MYSQL_DIR

mysql -u root --skip-password <<EOF
CREATE DATABASE wordpressdb;
CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'wordpresspass';
GRANT ALL PRIVILEGES ON wordpressdb.* TO 'wordpressuser'@'localhost';
IDENTIFIED BY 'wordpresspass';
FLUSH PRIVILEGES;
EOF

mysql
