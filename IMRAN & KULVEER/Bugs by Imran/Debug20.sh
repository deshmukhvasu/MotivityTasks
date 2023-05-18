#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
   echo "We have entered in IF block."
   echo "Your Number is greater than 100"
   echo $DATE
fi
echo "Script execution completed successfully."



