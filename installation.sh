#!/bin/bash
Userid=$(id -u)
id=$?
R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'
N='\e[0m'   # No Color

log_folder="/var/log/shellscript"
log_file="/var/log/shellscript/$0.log"
if [ $Userid -ne 0 ]; then
echo -e "$R this is not sudo user $N" | tee -a $log_file
exit 1
fi
mkdir -p $log_folder
# Package=$1
validate (){
    if [ $id -eq 0 ]; then 
echo -e "$Package installation $G Success $N" | tee -a $log_file
else 
echo -e "$Package installation $R failure $N" | tee -a $log_file
fi
}

for Package in $@
do
dnf list installed $Package &>> $log_file
if [ $id -eq 0 ];then
echo  -e "$Y $Package is already installed $N" | tee -a $log_file
else
echo "installing $Package"
dnf install $Package -y &>> $log_file
validate $Package
fi
done