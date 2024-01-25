#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage\n>"
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"
#echo "$message" | mail -s "High Disk Usage" kakarlasagar@gmail.com

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "kakarlasagar@gmail.com" "ALERT High Disk Usage"