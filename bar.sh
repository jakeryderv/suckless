#!/bin/bash

getDateTime() {
    echo -n "$(date '+%Y-%m-%d %H:%M:%S')"
}

getBattery() {
    BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
    echo -n "Battery: $BATTERY% "
}

while true; do
    xsetroot -name "$(getBattery) | $(getDateTime)"
    sleep 1
done
