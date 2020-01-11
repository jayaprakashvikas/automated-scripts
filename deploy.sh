#!/bin/bash

service="catalina.sh"

sudo "$CATALINA_HOME/$service" stop

sudo mv /opt/tomcat/apache-tomcat-8.5.50/logs/*.log ./templog 
sudo mv /opt/tomcat/apache-tomcat-8.5.50/webapps/*.war /home/ubuntu/backup/
sudo scp -i newkeypair.pem ubuntu@172.31.36.219:/home/ubuntu/sample.war /opt/tomcat/apache-tomcat-8.5.50/webapps/

sudo "$CATALINA_HOME/$service" start
