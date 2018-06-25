#!/bin/sh

killall xautolock
xautolock -time 7 -locker ~/.config/i3/bin/i3lock-fancy-multimonitor.sh &

