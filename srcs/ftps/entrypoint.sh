#!/bin/sh

/telegraf/usr/bin/telegraf &
pure-ftpd -p 21000:21000 -P 192.168.99.110 -Y 2
