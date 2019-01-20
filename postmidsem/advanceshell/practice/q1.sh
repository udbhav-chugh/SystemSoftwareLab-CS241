#! /bin/bash

printf "%s\t\t%s\t\t%s\t\t%s\n" "Time" "Memory" "Disk" "CPU"

for (( i=0; i <13 ;i ++ )) ; do
	t=$((i*5))

x=$( top -bn1 | grep "Cpu(s)" | awk '{print 100-$8}' )
y=$( df | awk 'NR>1 { x+=$3 ; y+=$2 } END {print (x*100.00)/y}' )
z=$(free -t | awk '{if(NR==4) print ($3*100.00)/$2}')

printf "%d\t\t%.2f%%\t\t%.2f%%\t\t%.2f%%\n" $t $z $y $x

	sleep 5
done
