#!/bin/bash
read -p "Enter countdown: " number

while [ $number -gt 0 ]
do
	echo "$number"
	sleep 1
	((number--))
done

echo "Time is up"
