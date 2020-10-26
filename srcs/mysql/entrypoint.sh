#!/bin/sh

# mkdir -p /run/mysqld
# mkdir -p /var/lib/mysql
#
# mysql_install_db --user=root --datadir=/var/lib/mysql > /dev/null
#
# /usr/bin/mysqld --user=root --datadir=/var/lib/mysql --bootstrap <<EOF
# CREATE DATABASE wordpress;
# CREATE USER 'root'@'%' IDENTIFIED BY 'root';
# GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'%' IDENTIFIED BY 'root';
# FLUSH PRIVILEGES;
# EOF
#
# sleep 5
#
# sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
#
# exec /usr/bin/mysqld --user=root --datadir=/var/lib/mysql

mkdir -p /run/mysqld
mkdir -p /var/lib/mysql

mysql_install_db --user=root > /dev/null

/usr/bin/mysqld --user=root --bootstrap <<EOF
CREATE DATABASE wordpress;
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'%' IDENTIFIED BY 'root';
FLUSH PRIVILEGES;
EOF

sleep 5

sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

exec /usr/bin/mysqld --user=root
