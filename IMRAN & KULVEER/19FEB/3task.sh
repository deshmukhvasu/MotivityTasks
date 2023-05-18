# You needs to print a given Number say 10572,
# in reverse order using a Shell script such that the input is provided using command Line Argument only.
# If the input data is not provided as Command Line Argument, it should throw and error and should suggest, how to use the script.
# Write the script but before that tell me the algorithm that needs to be implemented here.

#!/bin/bash
read n
x=0
y=0

while [ $n -gt 0 ]
do
    x=$(( $n % 10 ))
    y=$(( $y * 10 + $x ))
    n=$(( $n / 10 ))
done

echo "Reverse number of entered digit is $y"
