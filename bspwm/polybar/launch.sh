#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar symbol -c ~/.config/polybar/current.ini &
polybar date -c ~/.config/polybar/current.ini &

## Right bar
#polybar top -c ~/.config/polybar/current.ini &
#polybar primary -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &

# MONITOR 2
polybar -c ~/.config/polybar/workspace.ini hdmi &