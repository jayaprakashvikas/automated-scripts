#!/bin/bash

cd /var/lib/jenkins
sudo cp -r * /home/ec2-user/jenkins/jenkinbackup
cd /home/ec2-user/jenkins/jenkinbackup
mkdir build
sudo git add . 
sudo git commit -m "backing up jenkin conf files"
sudo git push origin
 
