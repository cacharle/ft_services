#!/bin/sh

mkdir -vp /run/mysqld

echo -e 'asdfasdf123\nasdfasdf123\n' | adduser cacharle

mysql_install_db --user=cacharle

/usr/bin/mysqld --user=cacharle --skip-password --bootstrap <<EOF
CREATE DATABASE wordpressdb;
CREATE USER 'cacharle'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wordpressdb.* TO 'cacharle'@'localhost';
IDENTIFIED BY 'pass';
FLUSH PRIVILEGES;
EOF

# until mysql; do
# sleep 5

/usr/bin/mysqld --user=cacharle
