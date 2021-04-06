#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Multiple monitors support
if [ "$(xrandr -q | grep " connected" | awk '{print $1}' | wc -l)" -eq "2" ]; then
	MONITOR="eDP-1-1" polybar -c ~/.config/polybar/config.ini secondary &
	MONITOR="HDMI-0" polybar -c ~/.config/polybar/config.ini main &
else
	polybar -c ~/.config/polybar/config.ini main &
fi
