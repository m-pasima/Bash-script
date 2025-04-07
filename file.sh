#!/bin/bash
read -p "Enter filename: "


if [ -e "$filename" ]; then 
	echo "$filename exists"
else
	echo "$filename does not exist"
fi
