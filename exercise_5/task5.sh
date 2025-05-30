#!/bin/bash

# ## 5. Apache Log Size Monitor
# Goal: Check if Apache access log exceeds 100MB. If so, archive and clear it.

# Pseudocode:

# Check /var/log/apache2/access.log size
# If size > 100MB:
#    Move it to access.log.YYYYMMDD.gz
#    Touch a new empty access.log
#    Restart Apache

filesize=$(ls -la /var/log/httpd/access_log | awk -F " " '{ print $5 }')

if [ $filesize -gt "104857600" ]; then
    find /var/log/httpd -type f -name "*access_log*" -exec bash -c 'gzip --suffix "$(date +".%Y%m%d").gz" "$@"' bash {} +
    touch /var/log/httpd/access_log
    systemctl restart httpd
    echo "Log file has been archived successfully!"
else 
    echo "Filesize is normal no need to compress! $(date)"
fi