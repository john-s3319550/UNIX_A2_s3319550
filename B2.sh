#!/bin/bash

while getopts ":abcde" opt; do		# Loop: Get the next option;
					# no options take arguments.
  case "$opt" in                         
	a)   	echo "CPU Cores: $(grep 'cpu cores' /proc/cpuinfo | uniq)"
      		;;
    	b)	echo ps -o ni
      		;;
	c)	echo ps -U $USER | wc -l
		;;
	d) 	echo "Open files by $USER: $(lsof | grep -w $USER | wc -l)"
		echo "Open file desciptors by $USER: $(ps aux | grep -w $USER | wc -l)"
		;;
	e)	echo ulimit -a | grep "stack size"
		;;
  esac
done



