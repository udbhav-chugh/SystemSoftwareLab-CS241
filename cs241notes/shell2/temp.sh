#! /bin/bash
echo enter array:
read -a arr
echo enter sum:
read tot
n=${#arr[@]}

for (( i = 0; i < $n; i++ )); do
	#statements
	temp=${arr[$i]}
	for (( j = $i+1; j < $n; j++ )); do
		#statements
		temp2=${arr[$j]}
		sum=$((temp+temp2))
		if [[ $sum == $tot ]]; then
			#statements
			echo $temp $temp2 
		fi
	done
done
