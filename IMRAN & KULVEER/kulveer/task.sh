#!/bin/bash



#The script prompts the user to enter the path to the CSV file.



echo "Enter the file path: " 

read csvpath





#Validate the file if its not CSV the script should terminate



filename="$csvpath"



if [[ "${filename##*.}" != "csv" ]]; 

then

    

echo -e "It is not a CSV file. Terminating script."

    exit 1

else

echo -e  "File has a .csv extension."

fi



#The script prompts the user to enter an age range (e.g., "18-25") to filter the results.

#If not in given range expression  script should prompt to enter with an example to enter the range



echo "Please enter the Age: "



read num



if [[ $num -ge 18 && $num -le 25 ]]; 



then 



 echo "The number is valid" 



else 



 echo "Error! Please"



fi



#The script reads the CSV file and extracts the following information for each user.

# Extract the user information from the CSV line

awk -F',' '{print $1}' data.csv