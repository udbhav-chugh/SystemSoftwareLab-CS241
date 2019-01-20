#! /bin/bash

if [ $# -eq 0 ]
then
	echo 'both command line arguments are missing'
elif [ $# -eq 1 ]
then
	echo 'one command line arguments are missing'
else
	echo $(($1+$2))
fi
