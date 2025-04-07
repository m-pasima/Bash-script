#!/bin/bash
preset_passwd="devops123"

read -s -p "Enter password: " passwd

if [ "$passwd" == "$preset_passwd" ]; then
       echo "Access Granted"
else
      echo "Access not Granted"
fi 
