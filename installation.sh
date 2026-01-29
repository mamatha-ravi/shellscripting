#!/bin/bash
Userid=$((id -u))
id=$?
Package=$1
validate (){
    if [ $id -eq 0 ]; then 
echo "$Package installation Success"
else 
echo "$Package installation failure"
fi
}
if [ $Userid -ne 0 ]; then
echo "this is not sudo user"
exit 1
fi

echo "installing $Package"
dnf install $Package -y
validate $Package
