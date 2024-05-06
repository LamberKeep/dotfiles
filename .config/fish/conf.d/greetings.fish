function fish_greeting
	set_color "#8abeb7"

	#echo
	#echo -e "$(shuf -n 1 $HOME/.config/fish/conf.d/greetings.txt)"
	#echo
       	echo -e "Date\t$(date)"
	echo -e "Uptime\t$(uptime -p | cut -b 4-)"
	#echo -e "Public IP\t$(curl http://icanhazip.com/ -s)"
	echo
end
