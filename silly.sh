#!/bin/bash

sudo yum -y update

sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=443/tcp
sudo firewall-cmd --reload

sudo yum install httpd

sudo systemctl start httpd
#sudo systemctl enable httpd

echo "This is a silly script" > /tmp/silly.txt

