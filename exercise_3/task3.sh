#!/bin/bash

## http://localhost/
## http://example.com
## https://code.akumotechnology.com/

local=$(curl -o /dev/null -s -w "%{http_code}" http://localhost)

if [ $local = "200" ]; then
    echo "Ok" 
else 
    echo "Error"
fi

example=$(curl -o /dev/null -s -w "%{http_code}" http://example.com)

if [ $example = "200" ]; then
    echo "Ok" 
else 
    echo "Error"
fi

akumo=$(curl -o /dev/null -s -w "%{http_code}" https://code.akumotechnology.com/)

if [ $akumo = "200" ]; then
    echo "Ok" 
else 
    echo "Error"
fi