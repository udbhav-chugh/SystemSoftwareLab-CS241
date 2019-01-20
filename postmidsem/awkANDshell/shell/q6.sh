#! /bin/bash

read str

str2=$(echo $str | rev )

len=$(echo -n "$str" | wc -m)

if [ "$str2" == "$str" ]
then
	echo -n yes 
else
	echo -n no 
fi

echo " length of string is $len"