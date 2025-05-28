#!/bin/bash

port22=$(nc -zv localhost 22 | head -n 2 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $port22 = "Connected" ]; then
    echo "Port is open  $(date)"
else 
    echo "Port is closed - $(date)"
fi

