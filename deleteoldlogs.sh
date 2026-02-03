#!/bin/bash
DIR=" /home/ec2-user/app-log"
deletefiles=$(find $DIR -type f -name "*.log" -mtime +7 )
# find /path/to/directory -type f -mtime +7 -delete
echo "delete files: $deletefiles"
while IFS= read -r file;
 do
 echo "$file"
 read -p "you want to delete $file yes/no" confirm
 done <<< $deletefiles
