#!/bin/bash

attr_int_list(){

	ip -o link show | cut -f2 -d ":" | cut -f2 -d " "

}

attr_int_ip(){

	int="$1"
	ip addr show dev $int | grep "inet " | cut -f6 -d" " | cut -f1 -d/	

}

