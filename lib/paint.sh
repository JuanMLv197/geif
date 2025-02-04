#!/bin/bash

paint_title(){

	echo -e "  \e[92m_____ _____ _____ _____
 || \e[91mG\e[92m ||| \e[91mE\e[92m ||| \e[91mI\e[92m ||| \e[91mF\e[92m ||
 ||___|||___|||___|||___||
 |/___\|/___\|/___\|/___\|\e[0m\n"
	
 	tput sc
 	echo -e "[1 <- Details][2 <- Edit][3 <- Test] \e[1mPlease choose one of these options\e[0m"
	tput rc
}

paint_option(){

	if [ $1 = "Details" ]; then

		echo -e "\e[1;93m[1 <- Details]\e[0m[2 <- Edit][3 <- Test]\n"
		echo -e "\e[1;4mShow some details about the network interfaces\e[0m"	

	elif [ $1 = "Edit" ]; then

		echo -e "[1 <- Details]\e[1;93m[2 <- Edit]\e[0m[3 <- Test]\n"
		echo -e "\e[1;4mEditing the network interfaces parameters\e[0m"

	elif [ $1 = "Test" ]; then

		echo -e "[1 <- Details][2 <- Edit]\e[1;93m[3 <- Test]\e[0m\n"
		echo -e "\e[1;4mTesting the network interfaces with different tests\e[0m"

	fi

}
