#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export DISPLAY=:0.0

battery_high=80
battery_status=$(acpi | cut -d':' -f2 | cut -d',' -f2 | cut -d'%' -f1 | xargs)

if [[ $battery_status -ge $battery_high ]]; then
    dunstify -a Battery "Battery at $battery_status%"
fi
