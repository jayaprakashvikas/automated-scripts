#!/bin/bash

size=`df -h .|tail -1|awk -F " " '{print $(NF-1)}'|sed 's/%//'`
if [ $size -gt 25 ]
then
	body=`echo "haii your memory reached more than 90%"`
	echo $body|mail -s "!!memory alert!!" vikasviku95@gmail.com
fi
