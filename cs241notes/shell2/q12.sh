#! /bin/bash

echo Enter rows and columns: 
read m n

echo Enter first matrix elements:
for (( i=0;i<m;i++ ))
do
	read -a arr
	for ((j=0;j<n;j++))
	do
		x[$(($i*$n+$j))]=${arr[$j]}
	done
done

echo Enter second matrix elements:
for (( i=0;i<m;i++ ))
do
	read -a arr
	for ((j=0;j<n;j++))
	do
		y[$(($i*$n+$j))]=${arr[$j]}
		z[$(($i*$n+$j))]=$((${x[$(($n*$i+$j))]}+${y[$(($n*$i+$j))]}))
	done
done

echo Matrix: 
for (( i=0;i<m;i++ ))
do
	for ((j=0;j<n;j++))
	do
		echo -ne ${z[$((i*n+j))]}" " 
	done
	echo -ne "\n"
done
