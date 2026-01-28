#!/bin/bash
# echo "Hello, World!"
# echo "this is me"

# num=$1
# remainder=$(($num %2 ))
# if [ $remainder -ne 0 ]; then
# echo "$num is odd number"
# exit 1
# else 
# echo "$num is even"
# fi

# [ $(( $1 % 2 )) -eq 0 ] && echo "Even" || echo "Odd"
num=$1
if [ $num -le 1 ]; then
echo "not prime"
exit1
fi
for (( i=2 ; i<=$num; i++)); do
remainder=$(($num % i))
if [ $remainder -eq 0 ]; then
echo "not prime"
exit1
fi
echo "$num is prime"

