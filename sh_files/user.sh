#!/bin/bash

_create_user() {

    read -p "Enter username: " username
    useradd $username
}

_delete_user() {
    read -p "Enter username to delete: " username
    userdel $username
}

read -p "Do you want to 'create' or 'delete' user account? " input

if [ $input = 'create' ]; then
    read -p "Enter username: " username
    useradd $username -p passwd
    echo "User account has been created"
    echo "$(date) User account is created" >> log.txt 

elif [ $input = 'delete' ]; then
    read -p "Enter username to delete: " username
    userdel $username
    echo "User account has been deleted"
    echo "$(date) user account was deleted" >> log.txt
else
    echo "$(date) Invalid option!" >> log.txt
    echo "Invalid option!"
    exit
fi
