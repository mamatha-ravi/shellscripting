#!/bin/bash
R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'
N='\e[0m'   # No Color
message=""
IP_ADDRESS=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

usage_threshold=70
Disk_usage=$(df -hT | grep -v Filesystem)

while IFS= read -r logs
do
usage=$(echo $logs | awk '{print $6}' | cut -d "%" -f1)
partition=$(echo $logs | awk '{print $7}')
if [ "$usage" -gt "$usage_threshold" ]; then
message+="high disk utilization in $partition : $usage% \n"
fi
done <<< $Disk_usage
echo -e "$message"
sh mail.sh "mamata.r@gmail.com" "High Disk Usage Alert on $IP_ADDRESS" "$MESSAGE" "HIGH_DISK_USAGE" "$IP_ADDRESS" "DevOps Team"