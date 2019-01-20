#! /bin/bash

read str

if [[ $(rev <<< "$str") == "$str" ]]
then
	echo "Yes Length of String ${#str}"
else
	echo "No"
fi
