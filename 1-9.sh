#!/bin/bash
# Get variables:
x=$1
y=$2
# Cheking variables(numbers or not?):
if [[ $x =~ ^[+,-]?[0-9]+$ && $y =~ ^[+,-]?[0-9]+$ ]]; then
	a=$(( $x*2 + $y*2 )) #Perimeter 
	#Cheking negative numbers
	if [[ $x =~ ^[-][0-9]+$ || $y =~ ^[-][0-9]+$ ]]; then
		# if negative number:
		echo "Data entered incorrectly!!!(x<0 or y<0)"
	else
		# if pozitive number:
		echo "Perimeter of the rectangle is equal: " $a
	fi
else
	#if variables are not numbers:
	echo "Variables are not numbers!!!"
fi
