#!/bin/bash

IP=217.61.121.178

while :
do
ping -c1 -t1 $IP | grep 64 &> /dev/null
if [ $? == 0 ]; then
	echo FOUND!
	tput bel
fi
sleep 1
done
