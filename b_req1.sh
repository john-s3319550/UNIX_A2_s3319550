#!/bin/bash

commandpass=$1

case $commandpass in
	memory ) free
		;;
	diskspace ) df -H 
        	;;
	connections ) ip a
		;;
	sysload ) uptime
		;;
    	* ) echo "You were expected to pass a command, Please choose from 
		memory
		diskspace
		connections
		sysload."
esac
