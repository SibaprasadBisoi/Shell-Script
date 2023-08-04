#!/bin/bash


#touch time.txt
cur_time=$(date "+%Y-%m-%d-%H-%M-%S")

for((i=0; i<7; i++))
do
echo $i- $cur_time>> /home/ec2-user/time.txt
done
