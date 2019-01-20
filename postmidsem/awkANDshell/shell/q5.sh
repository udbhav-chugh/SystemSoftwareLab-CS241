#! /bin/bash

R=$(($RANDOM%20))

echo Random number generated is $R

for (( i=0 ; i<3 ; i++ )) ; do
	read num1
	if [ $num1 -eq $R ]
	then
		echo Entered number is MATCHED
	elif [ $num1 -lt $R ]
		then
			echo Entered number is SMALLER
	else
		echo Entered number is GREATER
	fi
done


