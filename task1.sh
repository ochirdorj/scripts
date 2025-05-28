#!/bin/bash

##  httpd
##  mysql
##  ssh
##  cron

httpd=$(systemctl status httpd | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $httpd = "active" ]; then
    echo "Service is running -  $(date)" >> /root/exercises/timestamp.log
else 
    echo "Serivce is down - $(date)" >> /root/exercises/timestamp.log
fi

mysqld=$(systemctl status mysqld | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $mysqld = "active" ]; then
    echo "Service is running -  $(date)" >> /root/exercises/timestamp.log
else 
    echo "Serivce is down - $(date)" >> /root/exercises/timestamp.log
fi

sshd=$(systemctl status sshd | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $sshd = "active" ]; then
    echo "Service is running -  $(date)" >> /root/exercises/timestamp.log
else 
    echo "Serivce is down - $(date)" >> /root/exercises/timestamp.log
fi

crond=$(systemctl status crond | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $crond = "active" ]; then
    echo "Service is running -  $(date)" >> /root/exercises/timestamp.log
else 
    echo "Serivce is down - $(date)" >> /root/exercises/timestamp.log
fi
