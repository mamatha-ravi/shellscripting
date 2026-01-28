#!/bin/bash\
num1=$1
num2=$2

if[$num1>$num2]; then

sum=$((num1+num2))    #sum=$(($num1+$num2))  this is also correct
echo "sum of $num1 and $num2 is : $sum"
elif[$num1==$num2]; then
echo "both numbers are eaqual"

else 
echo "$num2 is greter"
fi

cities=("Hyd" "Bnglr" "Del")
echo "cities are: ${cities[@]}"
echo "city1 is : ${cities[0]}"