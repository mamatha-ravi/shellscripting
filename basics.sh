#!/bin/bash
Today=$(date)
echo "today date is $Today"
echo "Please enter ur username:"
read USER_NAME
echo "Welcome $USER_NAME"
echo "enter password for $USER_NAME"
read -s PASSWORD
 name1=$1  # name1=Sai
name2=$2
echo "$name1:: Hello, $name2"
echo  "$name2:: Hello, $name1"
echo "$name1:: How r u?"
echo  "$name2:: I am good, how about you?"
echo "$name1:: I am fine too."
