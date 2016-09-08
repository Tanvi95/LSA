#!/bin/bash                 

echo ''CPU AND MEMORY RESOURCES---------------''
echo ''Free RAM''
  free -m| grep Mem| awk '{print$4}'
echo ''CPU Load Average''
  uptime| cut -f 5 -d ':'

echo ''ACCOUNT INFORMATION------------------''
echo ''Total Users'':
 who --count
echo ''Number Active'':
  who| wc -l
echo ''Most frequently used shell'':
  head -6 /etc/shells| tail -1 

echo ''NETWORK CONNECTIONS''
 awk '{print $2,$10}' /proc/net/dev

# -q quiet
# -c nb of pings to perform
ping -q -c5 google.com > /dev/null
if [ $? -eq 0 ]
then
	echo ''Internet connectivity: Yes'' 
fi
