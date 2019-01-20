#! /bin/bash

for (( i = 1; i < 1000; i++ )); do
	#statements
	temp=$i
	sum=0
	while [[ $temp > 0 ]]; do
		#statements
		t=$(($temp%10))
		t3=$((t*t*t))
		sum=$((sum+t3))
		temp=$((temp/10))
	done
	if [[ $sum == $i ]]; then
		#statements
		echo $i
	fi
done