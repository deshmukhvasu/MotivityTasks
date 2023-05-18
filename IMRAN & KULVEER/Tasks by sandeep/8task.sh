# How will you debug a script if you have made any mistakes in a already written script?    
#!/bin/bash     
#           -x



set -x      # from here start debugging
num1 =10
num1=20

set +x      # stop here debugging
echo $((num1 + num2))