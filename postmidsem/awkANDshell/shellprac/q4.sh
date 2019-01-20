#! /bin/bash

read num1 num2 op

case "$op" in 
	"+") echo $num1+$num2 |bc ;;
	"-") echo $num1-$num2 |bc ;;
	"*") echo $num1*$num2 |bc ;;	
	"/") echo scale=2 ; $num1/$num2 | bc ;;
esac
