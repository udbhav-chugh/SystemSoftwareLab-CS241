#! /bin/bash

read -a arr

category[0]="CD No."
category[1]="Movie Name"
category[2]="Language"
category[3]="Price"
category[4]="Date of release"


if [[ ! -f question10.txt ]]
then
	for elem in ${!category[@]} ; do
	printf "%-17s","${category[$elem]}" >> question10.txt
	# printf "\t\t" >> question10.txt
done
	printf "\n" >> question10.txt
fi

for (( i=0; i<${#arr[@]} ; i++ ))
do
	printf "%-17s" "${arr[$i]}" >> question10.txt
	# printf "\t\t" >> question10.txt
done
	printf "\n" >> question10.txt

