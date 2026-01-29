#!/bin/bash
Userid=$(id -u)
id=$?
log_folder="/var/log/shellscript"
log_file="/var/log/shellscript/$0.log"
if [ $Userid -ne 0 ]; then
echo "this is not sudo user" | tee -a $log_file
exit 1
fi
mkdir -p $log_folder
# Package=$1
validate (){
    if [ $id -eq 0 ]; then 
echo "$Package installation Success" | tee -a $log_file
else 
echo "$Package installation failure" | tee -a $log_file
fi
}

for Package in $@
do
dnf list installed $Package
if [ $id -eq 0 ];then
echo "$Package is already installed"
exit 1
else
echo "installing $Package"
dnf install $Package -y &>> $log_file
validate $Package
fi
done