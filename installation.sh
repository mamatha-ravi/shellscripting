#!/bin/bash
Userid=$((id -u))
id=$?
log_folder="/var/log/shellscript"
log_file="/var/log/shellscript/$0.log"
mkdir -p $log_folder
# Package=$1
validate (){
    if [ $id -eq 0 ]; then 
echo "$Package installation Success" | tee -a $log_file
else 
echo "$Package installation failure" | tee -a $log_file
fi
}
if [ $Userid -ne 0 ]; then
echo "this is not sudo user" | tee -a $log_file
exit 1
fi
for Package in $@
do
echo "installing $Package"
dnf install $Package -y &>> $log_file
validate $Package
done