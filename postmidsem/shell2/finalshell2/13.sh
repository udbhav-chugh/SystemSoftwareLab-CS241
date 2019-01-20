#!/bin/sh
touch sample.txt
file=sample.txt
trap 'rm -f $file && echo file deleted; exit' 0 2 15

echo “pid is $$”
while (( COUNTER < 10 ))
do
sleep 1
(( COUNTER ++ ))
echo $COUNTER
done
exit 0