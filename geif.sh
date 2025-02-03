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

title

stty -echo

while true; do
    read -n 1 key
    case $key in
        1)
            tput sc

			echo -e "[\e[93m1\e[0m][2][3]\n"
			echo -e "\e[1mDetails\e[0m"
			
			tput rc
            ;;
        2)
			tput sc
			echo -e "[1][\e[93m2\e[0m][3]"
            tput rc
			;;
        3)
			tput sc
			echo -e "[1][2][\e[93m3\e[0m]"
			tput rc
            ;;
		q)
			clear
			stty echo
			exit
    esac
done

