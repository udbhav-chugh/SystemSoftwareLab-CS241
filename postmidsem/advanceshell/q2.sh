#! /bin/bash

while :
do

temp=$(lsblk | grep -c "sd[b-z]")

if [[ $temp == 0 ]]
then
	echo "No USB"
else
	echo "USB inserted"
fi

sleep 2

done

# lsusb > file1
# while true; do
# 	lsusb > file2
# 	#awk 'FNR==NR{a[$0];next}!($0 in a)' file1 file2 
# 	#echo Logged-in
# 	grep -vf file1 file2
# 	#echo Logged-out
# 	#grep -vf file2 file1
# 	lsusb > file1
# 	sleep 1;
# done