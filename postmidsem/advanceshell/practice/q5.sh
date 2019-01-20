#! /bin/bash

codeencode(){
	touch temp.txt

	a1=$(echo {a..z} | tr -d ' ' | rev)
	a2=$(echo {a..z} | tr -d ' ')
	a3=$(echo {A..Z} | tr -d ' ' | rev)
	a4=$(echo {A..Z} | tr -d ' ')
	a5=$(echo {0..9} | tr -d ' ' | rev)
	a6=$(echo {0..9} | tr -d ' ')

	cat $1 | tr "$a2" "$a1" | tr "$a4" "$a3" | tr "$a6" "$a5" >> temp.txt

	mv temp.txt $1
	cat $1
	echo
}

while :
do
	echo -e "1)Code \n 2) Decode\n 3) Exit"
	read val

	if [[ $val -eq 3 ]]
	then
		break
	fi

	if [[ $val -eq 2 || $val -eq 1 ]]
	then
		codeencode $1
	else
		echo Invalid Input
	fi
done
