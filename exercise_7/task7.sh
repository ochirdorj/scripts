#!/bin/bash

# 7. Auto Update & Reboot Reminder
# Goal: Check if updates are available. If kernel update is included, notify admin to reboot.

# Hint: dnf list --upgrades

# Pseudocode:

# Run dnf list --upgradable
# If 'linux-image' is in the list:
#    Print "Kernel update detected, reboot required"
# Else:
#    Print "No reboot required"

dnf clean metadata

check=$(dnf list --upgrades | grep -q "linux-image")



if [ $check = "linux-image" ]; then
    echo "Kernel update detected, reboot required "
else 
    echo "No reboot required" 
fi