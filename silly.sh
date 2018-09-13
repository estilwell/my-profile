#!/bin/bash

sudo yum -y update

#sudo firewall-cmd --permanent --add-port=80/tcp
#sudo firewall-cmd --permanent --add-port=443/tcp
#sudo firewall-cmd --reload

sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --zone=public --permanent --add-service=https
sudo firewall-cmd --reload

sudo yum install httpd

sudo systemctl start httpd.service
#sudo systemctl enable httpd

echo "This is a silly script" > /tmp/silly.txt

