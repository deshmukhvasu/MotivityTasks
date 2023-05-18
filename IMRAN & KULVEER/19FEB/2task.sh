# Write a Shell Script that adds two numbers
# if provided as the command Line Argument and if the two numbers are not entered it outputs an Error Message
# along with a one-Line of how-to use description.


#!/bin/bash
read a
read b

if sum=`expr $a + $b`;
then
echo "Total is : $sum"
else
echo "Enter an integer not a Non-integer"
fi