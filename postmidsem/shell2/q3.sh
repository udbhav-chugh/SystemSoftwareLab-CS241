#! /bin/bash

while :
do
	check=$(pwd)
	#statements
	if [[ $check == */$1 ]]; then
		break
	else
		cd ..
	fi
done
