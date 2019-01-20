#! /bin/bash

# while :
# do

# val=$(lsblk | grep -c "sd[b-z]" )

# if [[ val -eq 0 ]]
# then
# 	echo "USB not found"
# else
# 	echo "USB inserted"
# fi

# sleep 2

# done


lsusb > file1

while : 
do
	sleep 5
	lsusb > file2
	grep -vf file1 file2

	lsusb > file1
done
