#!/bin/bash
if [ "$1" == "list" ]; then
	cd '/cygdrive/d/php'
	for file in */
	do
		echo ${file%/}
	done
else
	cd '/cygdrive/d/php'
	for file in */
	do
		if [ ${file%/} == "$1" ]; then
			setx PHP "D:\php\\$1"
			echo "PHP version updated to $1, please restart your terminal"
			read -n 1 -s -p "Press any key to end your current session."
			kill -9 $PPID
		fi
	done
fi