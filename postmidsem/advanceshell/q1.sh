printf "%10s %10s %10s %10s \n" "Time" "Memory" "Disk" "CPU"

for (( i=0 ; i<13 ; i++ )) ; do
	
	t=$((i*5))
	x=` top -bn1 | grep "Cpu(s)" | awk '{print 100-$8}' `
	y=` df | awk 'NR>1 { use+=$3 ; tot+=$2 } END {print (use*100.00)/tot}' `
	z=` free -t | awk '{if(NR==4) {print ($3*100.00)/$2}}' `

	printf "%10s %10s%% %10s%% %10s%% \n" $t $z $y $x

	sleep 5
done
