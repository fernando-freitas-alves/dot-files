#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Polybar call function
BAR_NAME=i3wmthemer_bar
launch_polybar()
{
    export MONITOR="$1"
    export TRAY_POSITION="$2"
    echo MONITOR=$MONITOR
    echo TRAY_POSITION=$TRAY_POSITION
    polybar --reload $BAR_NAME &
}

# Launch bars one each screen
type "xrandr" 2>&1 >/dev/null
if [ $? -eq 0 ]; then
    PRIMARY_MONITOR=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)
    OTHER_MONITORS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)
    launch_polybar $PRIMARY_MONITOR right
    for monitor in $OTHER_MONITORS; do
        launch_polybar $monitor
    done
else
    polybar --reload $BAR_NAME &
fi

##!/bin/env sh

#pkill polybar

#sleep 1;

#polybar i3wmthemer_bar &
