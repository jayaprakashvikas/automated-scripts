#/bin/bash

total=`ls /home/ubuntu/practice|wc -l`
oldfiles=`expr $total - 2`
if [ $oldfiles -gt 0 ]
then
	cd /home/ubuntu/practice
	ls -rt|head -$oldfiles|xargs rm -rf
fi
