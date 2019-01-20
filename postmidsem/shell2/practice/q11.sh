#! /bin/bash

for (( i=1;i<1000;i++ ))
do
	temp=$i
	sum=0
	while [[ $temp > 0 ]]
	do
		t=$(($temp%10))
		t3=$((t*t*t))
		sum=$((sum+t3))
		temp=$((temp/10))
	done
	if [[ $sum == $i ]]
	then
		echo $i
	fi
done
