#!/bin/bash


time=$(echo "$(( $(cut -d. -f1 /proc/uptime) / 60 ))")

if [ $time -lt 5 ]; then
    echo "System was recently rebooted"
else 
    echo "System is stable"
fi