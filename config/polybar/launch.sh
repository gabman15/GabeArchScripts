#!/usr/bin/env bash

killall -q polybar
killall -q polybar-msg

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
HOSTNAME=`hostname`
export HOSTCONFDIR=$HOSTNAME
if [ $HOSTNAME = 'gensokyo' ]; then
    MONITOR="DP-0" polybar --reload bar_top_left &
    MONITOR="DP-0" polybar --reload bar_bottom_left &
    MONITOR="DVI-D-0" polybar --reload bar_top_right &
    MONITOR="DVI-D-0" polybar --reload bar_bottom_right &
else # 1 screen
    if type "xrandr"; then
	    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	        MONITOR=$m polybar --reload bar_top &
	        MONITOR=$m polybar --reload bar_bottom &
        done
    else
	    polybar --reload bar_top &
	    polybar --reload bar_bottom &
    fi
fi

echo "Polybar launched..."
