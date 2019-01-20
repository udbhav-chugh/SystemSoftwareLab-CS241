#! /bin/bash

echo "Enter two numbers: "
read num1 num2
echo "Enter operator: "
read op

case "$op" in
	 "+") echo $((num1+num2));;
	"-") echo $((num1-num2));;
	"*") echo $((num1*$num2));;
	"/") echo "scale=2 ; $num1 / $num2" | bc;; #scale allows float values
esac