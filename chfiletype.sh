#!/bin/bash
path_in="/home/ubuntu/practice"
cd "$path_in"
ls
for i in $`ls ${path_in}/*.log`
do
	echo $i
	file=`basename "$i"`
	echo $file
	filename="${file%.*}"
	echo $filename
	mv "$file" "$filename".confg
done
