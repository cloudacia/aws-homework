#!/bin/bash
apt-get -y update
apt-get -y install nginx
service nginx start
EC2_HOSTNAME=$(curl -s http://169.254.169.254/latest/meta-data/hostname)
echo "<h1>Hello AWS world</h1>" > /var/www/html/index.html
service nginx restart
