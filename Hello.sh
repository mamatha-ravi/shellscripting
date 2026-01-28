#!/bin/bash
echo "Hello, World!"
echo "this is me"

num=$1
remiander=($num%2)
if [ $remainder -ne 0 ] then
echo "$num is odd number"
exit 1
else 
echo "$num is even"