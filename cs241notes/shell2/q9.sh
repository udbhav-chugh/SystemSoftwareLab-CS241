#! /bin/bash

ls -l | awk 'NR>1 { printf "%-30s%-10s%-10s%-10s%-20s\n",$9,$6,$7,$8,$1 }'


ansf=$(ls -l | grep ^- | wc -l)
ansd=$(ls -l | grep ^d | wc -l)

# ls -l | awk '{if($0==^d*) ansd++; else ansf++}'


echo "Total no. of files: $ansf " | tee -a outputfile.txt
echo "total no. of directories: $ansd" | tee -a outputfile.txt
