#!/bin/bash

attr_int_list(){

	ip -o link show | cut -f2 -d ":" | cut -f2 -d " "

}

attr_int_state(){

	int="$1"
	ip -c=never addr show dev enp0s3 | grep -o "state.*" | cut -f2 -d" "
	unset $int

}

attr_int_ip(){

	int="$1"	
	ip -c=never addr show dev enp0s3 | grep -o "inet .*" | cut -f2 -d" "
	unset $int

}

attr_int_mac(){

	int="$1"
	ip -c=never link show dev enp0s3 | grep -o "link.*" | cut -f2 -d" "
	unset $int

}

attr_int_list
attr_int_state enp0s3
attr_int_ip enp0s3
attr_int_mac enp0s3
