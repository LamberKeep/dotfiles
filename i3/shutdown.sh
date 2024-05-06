#!/bin/bash

#RET=$(echo -e "shutdown\nreboot\nsuspend\nhalt\nfirmware-setup" | rofi -dmenu -p "pwr")
RET=$(echo -e "shutdown\nreboot\nsuspend\nhalt\nfirmware-setup" | dmenu -b -f -fn 'Ubuntu-12' -nb '#1d1f21' -sb '#cc6666' -p "pwr")

case $RET in
	"shutdown"	) systemctl poweroff ;;
	"reboot"	) systemctl reboot ;;
	"suspend"	) systemctl suspend ;;
	"halt"		) systemctl halt ;;
	"firmware-setup") systemctl reboot --firmware-setup ;;
	*		) ;;
esac
