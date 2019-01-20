#! /bin/bash

echo Enter two numbers: 
read a b

if [[ $b -le $a ]]; then
	#statements
	temp=$b
else
	temp=$a
fi


ans=0

for (( i = $temp ; i >=1 ; i-- )); do
	if [[ $a%$i -eq 0 && $b%$i -eq 0 ]]
		then
			ans=$i
			i=0
	fi
done

echo $ans