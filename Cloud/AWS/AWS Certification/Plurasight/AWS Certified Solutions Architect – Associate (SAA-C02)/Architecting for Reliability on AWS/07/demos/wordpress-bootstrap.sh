#!/bin/bash

yum update -y
yum install -y httpd24 php56 mysql php56-mysqlnd
service httpd start
chkconfig httpd on
echo "fs-56fc251e.efs.us-east-1.amazonaws.com:/ /var/www/html nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 0 0" >> /etc/fstab
mount -a