#!/bin/bash\


if [ id -u -e 0 ]; then
echo "installing ngninx"
dnf install ngnix -y
else
echo "this is not sudo user"
fi
if [ $? -e 0 ]; then
echo "success"
else
echo "Failure"
fi

# num1=$1
# num2=$2

# if [ $num1 -gt $num2 ]; then
# sum=$((num1+num2))    #sum=$(($num1+$num2))  this is also correct
# echo "sum of $num1 and $num2 is : $sum"
# # exit 1
# elif [ $num1 -eq $num2 ]; then
# echo "both numbers are eaqual"

# else 
# echo "$num2 is greter"
# fi

# cities=("Hyd" "Bnglr" "Del")
# echo "cities are: ${cities[@]}"
# echo "city1 is : ${cities[0]}"