#!/bin/bash

can_start=1
while :
do
	sleep 4s
	if [[ $(bin/trayopen $1) ]] 
	then
		if [[ $(blkid /dev/sr0) ]] && [ $can_start == 1 ]
		then
		echo "DVD detected, ripping started..."
		folder_count=$((folder_count + 1))
		echo "DVD name: "
		read folder_count
		mkdir "./DVD$folder_count"
		cd "./DVD$folder_count"
		dvdbackup -i /dev/sr0 -o ./ -M
		folder_count=" "
		cd ..
		can_start=0
		eject /dev/sr0
		fi
	else
		can_start=1
	fi
done

