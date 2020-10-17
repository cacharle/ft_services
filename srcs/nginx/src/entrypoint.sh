#!/bin/sh

echo 'root:password' | chpasswd
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
# echo 'Port 30022' >> /etc/ssh/sshd_config

openrc
touch /run/openrc/softlevel
/etc/init.d/sshd start

nginx -t || exit 1
nginx
sleep infinity &
wait
