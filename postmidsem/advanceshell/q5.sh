#! /bin/bash

# codeencode() {
# while read -n1 c; do
# 	if [[ $c == [a-l] ]]
# 	then
# 		temp= $((c+26))
# 		printf '%c' 
# 	fi
# done < $1
# }

# codeencode() {
# echo -n "" > temp.txt
# while read -n1 c; do
# 		if [[ $c == [a-z] || $c == [A-Z] || $c == [0-9] ]]
# 		then
# 			echo -n $c | tr abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA9876543210 >> temp.txt		
# 		else
# 			echo -ne $c	>> temp.txt
# 		fi	
# done < $1
# cp temp.txt $1
# cat $1
# echo
# }

codeencode() {

echo -n "" > temp.txt

a1=$(echo {a..z} | tr -d ' ' | rev)
a2=$(echo {a..z} | tr -d ' ')
a3=$(echo {A..Z} | tr -d ' ' | rev)
a4=$(echo {A..Z} | tr -d ' ')
a5=$(echo {0..9} | tr -d ' ' | rev)
a6=$(echo {0..9} | tr -d ' ')

cat $1 | tr "$a2" "$a1" | tr "$a4" "$a3" | tr "$a6" "$a5" >> temp.txt
cp temp.txt $1
cat $1
echo
}

while [[ 1 ]] ; do
	echo -e "Enter Option: \n 1)Encode \n 2)Decode \n 3)Exit"
	read val
	if [[ val -eq 3 ]]
	then
		break
	fi

	if [[ val -eq 2 || val -eq 1 ]]
	then
		codeencode $1
	fi

	if [[ val -le 0 || val -ge 4 ]]
	then
		echo "Invalid Input"
		break
	fi
done
