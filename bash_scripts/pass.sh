#!/bin/bash

password="new"

read -p "Enter your password: " input

if [ $password = $input ]; then
echo "Access granted"
exit
fi

while [ $password != $input ]; do
read -p "Wrong password, Try again: " input
((count++))
done


until [ $password = $input ]; do
echo "Access granted"
exit
done