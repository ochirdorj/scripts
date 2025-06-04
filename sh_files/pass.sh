#!/bin/bash

password="new"
count=0
read -p "Enter your password: " input

if [ $password = $input ]; then
    echo "Access granted"
    exit
else 
    while [ $password != $input ]; do
    read -p "Wrong password, Try again: " input
    ((count++))
    done
    echo "Access granted"
    echo "It took you $count tries"
fi 
