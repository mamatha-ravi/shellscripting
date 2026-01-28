#!/bin/bash
# Starttime=$(date +%s)
# echo "today date is $Starttime"
# sleep 10
# EndTime=$(date +%s)
# echo "End time is $EndTime"
# TotalTime=$((EndTime-Starttime))
# echo "total time executed is : $TotalTime"
# echo "Please enter ur username:"
# read USER_NAME
# echo "Welcome $USER_NAME"
# echo "enter password for $USER_NAME"
# read -s PASSWORD
#  name1=$1  # name1=Sai
# name2=$2
# echo "$name1:: Hello, $name2"
# echo  "$name2:: Hello, $name1"
# echo "$name1:: How r u?"
# echo  "$name2:: I am good, how about you?"
# echo "$name1:: I am fine too."
echo "all args passed to scripts : $@"
echo "count of args in the script: $#"
echo "script name :$0"
echo "present directory: $pwd"
echo "who is running username : $user"
echo "home directory of current user : $home"
echo "pid of the script : $$"
sleep 10 &
echo "pid of recently executed background process : $!"
echo "all args passed : $*"