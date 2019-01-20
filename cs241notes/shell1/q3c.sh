#! /bin/bash

summ=0
for i in $@ ; do
	if [[ $i -le 20 && $i -ge 10 ]]
	then
		summ=$((summ+$i))
	fi
done

echo $summ
