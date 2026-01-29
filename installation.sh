#!/bin/bash
Userid=$((id -u))
id=$?
Package=$1
if [ $Userid -ne 0 ]; then
echo "this is not sudo user"
exit 1
fi
echo "installing nginx"
dnf install $Package -y
validate $Package
validate (){

    if [ $id -eq 0 ]; then 
echo "$Package installation Success"
else 
echo "$Package installation failure"
fi
}