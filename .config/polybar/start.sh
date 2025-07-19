#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch (single screen)
polybar main &

# Launch (double screen)
#polybar first &
#polybar second &

echo "Polybar launched..."
