#!/bin/sh

/etc/init.d/sshd start

nginx -t || exit 1
nginx
sleep infinity &
wait
