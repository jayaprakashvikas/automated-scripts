#!/bin/bash
cd "buildtraining/"
git pull https://github.com/jayaprakashvikas/buildtraining.git
if [ $? -ne 0 ]
then
	git clone https://github.com/jayaprakashvikas/buildtraining.git
fi
make app1.exe
if [ $? -eq 0 ]
then
	mail -s "!!build success!! ready to release..." vikasviku95@gmail.com</dev/null

	
        scp app1.exe ubuntu@172.31.40.236:/home/ubuntu/testdir/ 	
else
	mail -s "build failure" vikasviku95@gmail.com</dev/null
fi
#cd "buildtraining/"
#touch newfile
