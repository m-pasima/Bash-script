#!/bin/bash
preset_passwd=$(cat secret.txt)


read -s -p "Enter password: " passwd

if [ "$passwd" == "$preset_passwd" ]; then 
	echo "Access Granted"
else
	echo "Wrong Password , try again!"
fi
