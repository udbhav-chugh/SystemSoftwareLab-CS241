#! /bin/bash

summ=0
for i in $@ ; do
	#statements
	if [[ $i -ge 10 && $i -le 20 ]]; then
		summ=$((summ+i))
		#statements
	fi
done

echo "$summ"
