#!/usr/bin/env bash

# You can call this script like this:
# $ ./brightnessControl.sh up
# $ ./brightnessControl.sh down

# Requires fontAwesome for icon

# A brightnessctl version of Blaradox's brightness script

function get_brightness {
  brightnessctl get
}

function get_max_brightness {
  brightnessctl max
}

function send_notification {
  icon=""
  brightness=$(get_brightness)
  max_brightness=$(get_max_brightness)
  brightness_output=" "
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipedia.org/wiki/Box-drawing_character
  #bar=$(seq -s "─" 0 $((brightness / 5)) | sed 's/[0-9]//g')
  # Send the notification
  exec dunstify -a Brightness -r 5555 "${brightness} / ${max_brightness}" 
}

case $1 in
  up)
    # increase the brightnessctl by 5%
    brightnessctl set +5% 
    send_notification
    ;;
  down)
    # decrease the brightnessctl by 5%
    brightnessctl set 5%-
    send_notification
    ;;
esac
