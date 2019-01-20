#! /bin/bash

x=$((1+$RANDOM%20))
echo "$x"

for (( i=1 ; i<=3 ; i++ )) ; do
	read num1 ;
	if [ $num1 -eq $x ]
	then
		echo "Entered number is MATCHED"
	elif [ $num1 -lt $x ]
	then
		echo "Entered number is SMALLER"
	else
		echo "Entered number is BIGGER"
	fi
done

