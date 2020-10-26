#!/bin/sh

echo 'root:password' | chpasswd
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

openrc
touch /run/openrc/softlevel
/etc/init.d/sshd start

nginx -t || exit 1
nginx
sleep infinity &
wait
