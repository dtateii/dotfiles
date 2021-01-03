#! /usr/bin/env sh

# Multi-monitor support
# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     MONITOR=$m polybar --reload top & polybar --reload bottom &
#   done
# else
#   polybar --reload top &
# fi

# Terminate already running polybars
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch polybar
polybar top &
polybar bottom &
polybar