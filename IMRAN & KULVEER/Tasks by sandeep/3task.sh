#Monitoring Disk Space utilization and Send Email Alert using script?

#!/bin/bash

# Set the threshold (in percentage) for disk space utilization
threshold=90

# Get the current disk space utilization
utilization=$(df -h | awk &#39;{print $5}&#39; | sed &#39;1d&#39; | awk -F&#39;%&#39; &#39;{print $1}&#39;)

# Loop through the utilization and check if it crosses the threshold
for i in $utilization; do
if [ $i -ge $threshold ]; then
# Send an email alert if the utilization crosses the threshold
subject=&quot;Disk Space Alert: Utilization above $threshold%&quot;
message=&quot;The disk space utilization is above $threshold%. Please take necessary actions to
free up disk space.&quot;
echo &quot;$message&quot; | mail -s &quot;$subject&quot; reena@gmail.com
fi
done