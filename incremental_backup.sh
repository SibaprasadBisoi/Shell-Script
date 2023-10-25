#!/bin/bash

srce=/home/ec2-user/Shell-script-project/sourc 
desti=/home/ec2-user/Shell-script-project/destination

for file in $(find $srce -printf "%P\n"); do
	if [ -a $desti/$file ] ; then
		if [ $srce/$file -nt $desti/$file ] ; then
			cp -r $srce/$file $desti/$file
		else
			echo "File $file exists, skipping."
		fi
	else
	echo "$file is beiing copied ovet to $desti"
	cp -r $srce/$file $desti/$file
	fi
done	


