#! /bin/bash

if [[ -f $1 && -f $2 ]]
then
	cat $1 >> $2
else
	echo "file doesnt exist"
fi
