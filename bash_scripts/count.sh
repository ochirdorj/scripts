#!/bin/bash

counter=1

while [ true ]; do
echo "count: $counter"
((counter++))

sleep 1

read -r "counting is stopped" stop

done

while [ true ]; do
read -r input 
if [[ "$input"="stop"]]; then
break
fi
done

