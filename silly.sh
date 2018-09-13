#!/bin/bash

sudo yum -y update
sudo yum install httpd

	
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --reload

sudo systemctl start httpd
sudo systemctl enable httpd

echo "This is a silly script" > /tmp/silly.txt

