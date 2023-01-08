#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export DISPLAY=:0.0

battery_low=20
battery_percentage=$(acpi | cut -d':' -f2 | cut -d',' -f2 | cut -d'%' -f1 | xargs)

if [[ "$(acpi | cut -d':' -f2 | cut -d',' -f1 | xargs)" == "Discharging" && $battery_percentage -le $battery_low ]]; then
    exec $(play -v 0.5 ~/Audio/system-sounds/battery-critical.ogg)
    exec $(dunstify -a Battery "Battery at $battery_percentage%")
else
    echo ""
fi
