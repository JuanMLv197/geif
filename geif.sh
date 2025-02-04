#!/bin/bash

source "/etc/geif/lib/attr.sh"
source "/etc/geif/lib/paint.sh"

#ACKNOWLEDGE OF COMPULSORY PREVIOUS CONDITIONS

if ! [ $(id -u) -eq 0 ]; then
	echo -e "\e[1mGeif\e[0m-\e[1;31mERROR\e[0m:You need to be root in order to start geif. Exiting..."
	exit
fi

#GEIF

clear

paint_title

stty -echo

while true; do
    read -n 1 key
    case $key in
        1)
            tput sc

			tput ed
			paint_option "Details"				

			tput rc
            ;;
        2)
			tput sc
			
			tput ed
			paint_option "Edit"
			
			tput rc
			;;
        3)
			tput sc

			tput ed
			paint_option "Test"
			
			tput rc
            ;;
		q)
			clear
			stty echo
			exit
	esac
done

