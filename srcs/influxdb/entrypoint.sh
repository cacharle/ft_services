#!/bin/sh

/telegraf/usr/bin/telegraf &
influxd run
