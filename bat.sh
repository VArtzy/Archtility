#!/bin/bash

THRESHOLD=10
BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ] && [ "$(cat /sys/class/power_supply/BAT0/status)" = "Discharging" ]; then
	i3-nagbar -t error -m 'Battery Low'
fi
