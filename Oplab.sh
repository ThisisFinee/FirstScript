#!/bin/bash
read -p "Please enter a rectangle length(x): " x
read -p "Please enter a rectangle width(y): " y
if [[ "$x" =~ ^[+,-]?[0-9]+$ && $y =~ ^[+,-]?[0-9]+$ ]]; then
	a=$(( $x*2 + $y*2 ))
	if [[ $x =~ ^[-][0-9]+$ || $y =~ ^[-][0-9]+$ ]]; then
		echo "Data entered incorrectly!!!(x<0 or y<0)"
	else
		echo "Perimeter of the rectangle is equal: " $a
	fi
else
	echo "Variables are not numbers!!!"
fi
