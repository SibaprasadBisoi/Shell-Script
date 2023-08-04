#!/bin/bash

alert=20

df -H | awk '{ print $5 " " $1}' | while read output;

do 
	echo " diskdetail: $output"
	usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
	file_system=$(echo $output | awk '{print $2}')
	#echo  $usage 
	#echo  $file_system

	if [ $usage -gt $alert ]
	then
		echo " critical for $file_system "
	fi	
done
