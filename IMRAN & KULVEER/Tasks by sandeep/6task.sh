# This example script prompts the user to enter a month and outputs the number of days.
# There are three possible answers: 30 days, 31 days, 28 or 29 days for February.

#!/bin/bash

shopt -s nocasematch
echo "Enter the name of a month."
read month
case $month in
  February)
echo "There are 28/29 days in $month.";;

  April | June | September | November)
echo "There are 30 days in $month.";;

  January | March | May | July | August | October | December)
echo "There are 31 days in $month.";;
  *)

echo "Unknown month. Please check if you entered the correct month name: $month";;
esac