#! /bin/bash

cat auth.log | awk ' {if ($11=="sonal" && $8=="opened" ) print $3 ; if ($11=="sonal" && $8=="closed" ) print $3}' auth.log > temp.txt

sed -i 's/:/ /g' temp.txt

awk '{ if(NR%2) { x+=((60*60*$1)+(60*$2)+$3) } else  { y+=((60*60*$1)+(60*$2)+$3) } } END {print y-x}' temp.txt
rm temp.txt