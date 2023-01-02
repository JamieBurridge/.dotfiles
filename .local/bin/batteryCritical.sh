#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export DISPLAY=:0.0

battery_low=20
battery_percentage=$(acpi | cut -d':' -f2 | cut -d',' -f2 | cut -d'%' -f1 | xargs)
isCharging=false

if [[ $(acpi | cut -d':' -f2 | cut -d',' -f1 | xargs) -eq "Charging" ]]; then
   isCharging=true 
else
   isCharging=false
fi

if [[ $battery_percentage -le $battery_low && isCharging -eq false ]]; then
    dunstify -a Battery "Battery at $battery_percentage%"
fi

