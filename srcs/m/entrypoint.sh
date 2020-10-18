#!/bin/sh

mkdir -p /run/mysqld
mkdir -p /var/lib/mysql

mysql_install_db --user=root --datadir=/var/lib/mysql > /dev/null

/usr/bin/mysqld --user=root --datadir=/var/lib/mysql --bootstrap <<EOF
CREATE DATABASE wordpressdb;
CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspass';
GRANT ALL PRIVILEGES ON wordpressdb.* TO 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspass';
FLUSH PRIVILEGES;
EOF

exec /usr/bin/mysqld --user=root --datadir=/var/lib/mysql
