#!/bin/bash

REMOTE_IP="67.205.167.134"
REMOTE_USER="root"
REMOTE_CONFIG_PATH="/etc/httpd/httpd.conf"

scp [root@137.184.238.228:/etc/httpd/conf/httpd.conf] [root@67.205.167.134:/etc/httpd/conf]

sshpass -p 'ochiR@99oo' ssh root@67.205.167.134

dnf install -y httpd

systemctl enable httpd

systemctl status httpd