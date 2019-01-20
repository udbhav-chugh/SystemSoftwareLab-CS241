#! /bin/bash

echo Enter two numbers:
read a b

temp=$a

echo GCD:

if [[ $b -lt $a ]]
then
	temp=$b
fi

for (( i=$temp ; i>=1 ; i-- )) ; do
	if [[ $(($a%$i)) == 0 && $(($b%$i)) == 0 ]]
	then
		ans=$i
		break
	fi
done

echo $ans
