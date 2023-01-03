#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

function get_volume {
  pamixer --get-volume-human | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_muted {
  pamixer --get-mute
}

function send_notification {
  volume=$(get_volume)
  muted=$(is_muted)
  if [[ $muted == "true" ]]; then
   exec dunstify -r 2593 -a Volume -u normal "muted"
  else
   exec dunstify -r 2593 -a Volume -u normal "${volume}"
  fi
}

function play_sound {
    play -v 0.5 $HOME/Audio/system-sounds/button-pressed.ogg
}

case $1 in
  up)
    play_sound
    # set the volume on 
    pamixer -u
    # up the volume
    pamixer -i 5
    send_notification
    ;;
  down)
    play_sound
    pamixer -u
    pamixer -d 5
    send_notification
    ;;
  mute)
    play_sound
    # toggle mute
    pamixer -t 
    send_notification
    ;;
esac
