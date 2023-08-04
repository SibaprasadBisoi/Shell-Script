#!/bin/bash

add_user()
{
USER=$1
PASS=$2

useradd  -m -p $PASS $USER && echo "Successfully added user"


}

#MAIN
 
add_user siba Pass@123
add_user sibabisoi Pass@123
