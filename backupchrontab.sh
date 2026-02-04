#!/bin/bash
Userid=$(id -u)

R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'
N='\e[0m'   # No Color
source_dir=$1
destination_dir=$2
days=${3:-14} # 14 days is the default value, if the user not supplied
log_folder="var/log/shellscripting"
log_file="$log_folder/backup.log"
mkdir -p $log_folder
log(){
    echo -e "$(date "+%F %H:%M:%S") : $1" | tee -a $log_file
}
if [ $Userid -ne 0 ]; then
log  "$R please run this script using root user $N"
exit 1
fi
USAGE(){
    log "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14 days] $N"
    exit 1
}

if [ $# -lt 2 ]; then
USAGE
exit 1
fi
if [ ! -d "$source_dir" ]; then
log -e "$R $source_dir source directory is not a directory $N"
exit 1
fi

if [ ! -d "$destination_dir" ]; then
log -e "$R $destination_dir source directory is not a directory $N"
exit 1
fi

delete_files=$(find $source_dir -type f -name "*.log" -mtime +$days)
log -e "delete files are $delete_files"
log "backup started"
log "source directory: $source_dir"
log "destination directory : $destination_dir"
log "days : $days"
if [ -z "$delete_files" ]; then
log -e "$R $delete_files file is empty $N"
exit 1
else 
time=$(date "+%F %H:%M:%S")
zip_file="$destination_dir/app-log-time.tar.gz"
tar -czvf $zip_file $delete_files
if [-f "$zip_file" ]; then
log "$G archival is ...success $N"
fi
while IFS= read -r file
do
log "ready to delete files $file"
# rm -i $file
done <<< $delete_files
log -e "$R there are no files to delete $N"
fi

