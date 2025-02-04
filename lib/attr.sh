#!/bin/bash

attr_int_list(){

	ip -o link show | cut -f2 -d ":" | cut -f2 -d " "

}

attr_int_ip(){

	int="$1"
	

}

