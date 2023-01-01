#!/usr/bin/env bash

# You can call this script like this:
# $ ./brightnessControl.sh up
# $ ./brightnessControl.sh down

# Requires fontAwesome for icon

# A modified version of Blaradox's brightness script

function get_brightness {
  brightnessctl get
}

function get_max_brightness {
  brightnessctl max
}

function send_notification {
  brightness=$(get_brightness)
  max_brightness=$(get_max_brightness)
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
