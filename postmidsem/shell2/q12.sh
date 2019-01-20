#!/bin/bash 

echo "Enter the matrix order [mxn] : " 
read m n 

echo "Enter the elements for first matrix" 
for ((i=0 ; i<m; i++ )) 
do 
for ((j=0 ; j<n; j++ ))  
do 
     read x[$(($n*$i+$j))] 
done 
done 

echo "Enter the elements for second matrix" 
for ((i=0 ; i<m; i++ )) 
do 
for ((j=0 ; j<n; j++ ))  
do 
     read y[$(($n*$i+$j))] 
    z[$(($n*$i+$j))]=$((${x[$(($n*$i+$j))]}+${y[$(($n*$i+$j))]})) 
done 
done 

echo "Matrix after addition is"  
for ((i=0 ; i<m; i++ )) 
do 
for ((j=0 ; j<n; j++ ))  
do 
    echo -ne "${z[$(($n*$i+$j))]}\t" 
done 
echo -e "\n" 
done 