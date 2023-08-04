#/bin/bash

echo " Read three numbers: "
read num1
read num2
read num3

if [ $num1 -gt $num2 ] &&  [ $num1 -gt $num3 ] 
then
	echo " $num1 is the greatest number. "
 
elif [ $num2 -gt $num3 ] && [ $num2 -gt $num1 ]
then
	echo " $num2 is the greatest number. "

elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ]
then
	echo " $num3 is the greatest number. "

fi	
