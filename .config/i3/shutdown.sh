#!/bin/bash

RET=$(echo -e "shutdown\nreboot" | rofi -dmenu -p "⏻ ")

case $RET in
        shutdown) sudo shutdown -h 0 ;;
        reboot) sudo reboot ;;
	#logout) xdotool key "super+shift+q" ;;
        *) ;;
esac
