#!/bin/sh

mkdir -vp /run/mysqld

# echo -e 'asdfasdf123\nasdfasdf123\n' | adduser cacharle

# export MYSQL_ROOT_PASSWORD=''

mysql_install_db --datadir=/usr/lib/data --user=root

/usr/bin/mysqld --user=root --bootstrap <<EOF
CREATE DATABASE wordpressdb;
CREATE USER 'root'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wordpressdb.* TO 'root'@'localhost';
IDENTIFIED BY 'pass';
FLUSH PRIVILEGES;
EOF

# until mysql; do
# sleep 5

exec /usr/bin/mysqld --user=root --console
