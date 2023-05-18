#Write a shell script to list all of the directory files in a directory?

#!/bin/bash

for entry in `ls $search_dir`; 
do

    echo $entry

done

