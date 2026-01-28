#!/bin/bash\
num1=$1
num2=$2
sum=$((num1+num2))
echo "sum of $num1 and $num2 is : $sum"

cities=("Hyd" "Bnglr" "Del")
echo "cities are: ${cities[@]}"
echo "city1 is : ${cities[0]}"