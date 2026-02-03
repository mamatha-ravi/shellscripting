#!/bin/bash
DIR="/home/ec2-user/app-log"

 Deletefile=$(find "$DIR" -type f -name "*.log" -mtime +7) 
 if [ -z "$Deletefile" ]; then
  echo "No old log files found. Exiting..."
  exit 1
fi
while IFS= read -r file
do
  echo "File found: $file"
  rm -f "$file"
  echo "$file is deleted "
  done <<< $Deletefile

# DIR="/home/ec2-user/app-log"

# find "$DIR" -type f -name "*.log" -mtime +7 | while IFS= read -r file
# do
#   echo "File found: $file"
#   read -p "Do you want to delete $file? (yes/no): " confirm < /dev/tty

#   if [ "$confirm" = "yes" ]; then
#     rm -f "$file"
#     echo "Deleted $file"
#   else
#     echo "Skipped $file"
#   fi
# done
