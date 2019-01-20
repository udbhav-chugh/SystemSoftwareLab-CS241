#! /bin/bash

read -a arr

for (( i = 0; i < ${#arr[@]}; i++ )); do
	#statements
	(( count[ ${arr[ $i ]} ]++ ))
done

for elem in ${!count[@]} ; do
	if [[ ${count[$elem]} == 1 ]]; then
		#statements
		echo $elem
	fi
done
