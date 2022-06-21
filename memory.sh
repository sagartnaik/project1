!/bin/bash
space=`df -h . | awk -F " " 'NR==2 { print $5 }' | sed 's/%/ /g'`

if [ $space -ge 26 ]
then
	echo "memory reached threashold value" | mail -s "memory utilization" sagar.tn3692@gmail.com
fi
