#! /bin/bash

if [ $# -eq 0 ]
then 
	echo "both arguments missing"
elif [ $# -eq 1 ]
then
	echo "one argument missing"
else
	echo $(($1+$2))
fi