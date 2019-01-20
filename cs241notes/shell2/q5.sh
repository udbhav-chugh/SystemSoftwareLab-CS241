#! /bin/bash

echo Enter array:

read -a arr

for (( i=0; i<${#arr[@]} ; i++ )) ; do
	(( count[${arr[$i]}]++ ))
done

for elem in ${!count[@]} ; do
	if [[ ${count[$elem]} == 1 ]]
	then
		echo $elem
	fi
done
