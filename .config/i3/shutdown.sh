#!/bin/bash

RET=$(echo -e "shutdown\nreboot\nsuspend\nhalt\nfirmware-setup\nlogout" | dmenu -p "pwr")

case $RET in
	"shutdown"	) systemctl poweroff ;;
	"reboot"	) systemctl reboot ;;
	"suspend"	) systemctl suspend ;;
	"halt"		) systemctl halt ;;
	"firmware-setup") systemctl reboot --firmware-setup ;;
	"logout"	) i3-msg exit ;;
	*		) ;;
esac
