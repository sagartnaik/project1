<<<<<<< HEAD
/bin/bash
=======
#!/bin/bash
>>>>>>> 559196836401045cc1e9fbff0880674f756f9472
space=`df -h . | awk -F " " 'NR==2 { print $5 }' | sed 's/%/ /g'`

if [ $space -ge 26 ]
then
	echo "memory reached threashold value" | mail -s "memory utilization" sagar.tn3692@gmail.com
fi
