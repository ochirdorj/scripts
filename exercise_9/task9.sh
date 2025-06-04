#!/bin/bash

# 9. Basic Deployment Script
# Goal: You need to download some html+css website template and push it to Github. Pull latest code from a Git repo into a apache web directory, restart service, and log.

# Pseudocode:

# Define repo path and target directory
# cd into target
# Run git pull
# Restart apache
# Log output and timestamp

# repopath=$(https://www.tooplate.com/zip-templates/2137_barista_cafe.zip) 

# target=$(/var/www/html)

cd /root/script

git init

git clone https://github.com/ochirdorj/scripts.git

wget -O web.zip -P /root/scripts/ https://www.tooplate.com/zip-templates/2137_barista_cafe.zip

unzip web.zip -d /root/scripts

cd /root/scripts/2137_barista_cafe

mv * /root/scripts

git add *

git commit -m "web"

git push --set-upstream origin gh-pages

git push origin gh-pages

git pull origin gh-pages

systemctl restart httpd

echo $(date) 


