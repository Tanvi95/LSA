#!/bin/bash

Usage=$(df -h|grep /|awk '{print$5}'|head -1|sed 's/%//g')
Threshold=80  

if [ "$Usage" -gt "$Threshold" ] ; then

	echo "Disk space exceeded"
         mail -x tanvideshpand@gmail.com
         
fi


