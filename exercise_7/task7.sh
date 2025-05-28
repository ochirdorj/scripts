#!/bin/bash

dnf list --upgrades



if [ $httpd = "active" ]; then
    echo "Service is running -  $(date)" >> /root/exercises/timestamp.log
else 
    echo "Serivce is down - $(date)" >> /root/exercises/timestamp.log
fi