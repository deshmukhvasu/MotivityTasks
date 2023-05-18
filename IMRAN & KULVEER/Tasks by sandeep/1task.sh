#Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments to it?Write a shell script to list all of the directory files in a directory?Monitoring Disk Space utilization and Send Email Alert using script?Write a simple script to install any tomcat server?write a shell script using arithmetic operators for adding, multiplication and subtraction of any two numbers?This example script prompts the user to enter a month and outputs the number of days. There are three possible answers: 30 days, 31 days, 28 or 29 days for February.How to schedule cronjobs for running any script like backup of logs?How will you debug a script if you have made any mistakes in a already written script?Script for iterations if-else, for, etc.,?

#!/bin/bash
# Check to see if enough arguments are passed
if [ $# -lt 2 ]
then
echo &quot;Usage: ./02dellines1.sh &lt;search_word&gt; &lt;file_name&gt; [&lt;file_name&gt; ...]&quot;
exit 1
fi
search_word=$1 # Read the search word
# Loop through all the supplied arguments
for file_name in &quot;$@&quot;
do
# Skip the search word
if [ &quot;$file_name&quot; = &quot;$1&quot; ]
then
continue
fi
echo $file_name
echo &quot;--------------------&quot;
# Check if the text file exists
if [ ! -f $file_name ]
then
echo &quot;File \&quot;$file_name\&quot; does not exist&quot;
exit 2
fi

# Loop through the file line by line

while read line
do
# if word is not found in current line then display it
if ( ! ( echo $line | grep &quot;$search_word&quot; &gt; /dev/null ) )
then
echo $line # Display the line
fi
done &lt; $file_name
done
