#!/bin/bash

valve=$( ipconfig | grep -v LOOPBACK | grep -ic mtu )

echo "$valve"

if [ $valve -eq 1 ]
then
  cho "1 Active Network Interface found."
elif [ $valve -gt 1 ]
then
  echo "Found Multiple active Interface."
else
  echo "No Active interface found."
fi