#! /bin/bash

cat auth.log| awk '{if($8=="opened" && $11=="sonal") print $3 >> "temptemp.txt"; if($8=="closed" && $11=="sonal") print $3 >> "temptemp.txt"  }'
sed -i 's/:/ /g' temptemp.txt

awk '{ if(NR%2) {x+=((60*60*$1)+(60*$2)+$3)} else {y+=((60*60*$1)+(60*$2)+$3)} } END {print y-x}' temptemp.txt
rm temptemp.txt