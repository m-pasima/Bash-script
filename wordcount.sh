#!/bin/bash

echo -n "Enter a word? : "
read word

echo -n "How many times? : "
read count


#initialise the counter

i=1

while [ $i -le $count ]
do 
	echo "$i : $word"
	((i++))
done

