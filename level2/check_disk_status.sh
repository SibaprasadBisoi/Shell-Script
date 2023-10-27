#!/bin/bash
alert=80
df -H | awk '{ print $5 " " $1 }' | while read output;
do
 usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
 file_system=$(echo $output | awk '{print $2}')
 if [ $usage -ge $alert ]
 then
 echo "$file_system is Critical"
 fi
done