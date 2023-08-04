#/bin/bash


add_user()
{
USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo " $1 user created successfully"

}

add_user Tarak Tappu
sleep 5
add_user Babita Tappu


