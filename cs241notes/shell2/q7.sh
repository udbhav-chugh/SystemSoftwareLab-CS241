#! /bin/bash

temp=$(ls -l | grep $1)

if [[ $temp != ?r* ]]
then
	echo "NO reading permission"
elif [[ -f $2 ]]
then
	echo "do you want to overwrite(yes/no) ?"
	read bool
	if [[ "$bool" == "yes" ]]
	then
		cat $1 > $2
	else
		cat $1 >> $2
	fi
else
	$1 > $2
fi
