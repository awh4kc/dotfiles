#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar top -r -c ~/.config/polybar/polybar.conf &
    MONITOR=$m polybar bottom -r -c ~/.config/polybar/polybar.conf &
  done
else
  polybar top -r -c ~/.config/polybar/polybar.conf &
fi
