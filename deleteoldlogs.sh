#!/bin/bash
DIR="/home/ec2-user/app-log"

 Deletefile=$(find "$DIR" -type f -name "*.log" -mtime +7) 
while IFS= read -r file
do
  echo "File found: $file"
  read -p "Do you want to delete $file? (yes/no): " confirm

  if [ "$confirm" = "yes" ]; then
     rm -f "$file"
    echo "Deleted $file"
  else
    echo "Skipped $file"
  fi
done <<< $Deletefile

