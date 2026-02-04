#!/bin/bash
R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'
N='\e[0m'   # No Color

usage_threshold=5
Disk_usage=$(df -hT | grep -v Filesystem)
while IFS= read -r logs
do
usage=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
partition=$(echo $line | awk '{print $7}')
if [ "$usage" -gt "$usage_threshold" ]; then
message+="high disk utilization in $partition : $usage"
fi
done <<< $Disk_usage
echo "message"