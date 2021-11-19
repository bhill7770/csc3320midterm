#Brianna Hill bhill28@student.gsu.edu
# !/bin/bash

#Prompt for  user Input
echo "Please enter two  numbers : "
read x
read y

# Various Input options  of operation
echo "Enter choice of operation :"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
read ch

# to switch case to perform

# for calculator operations - add, subtract, multiply, divide

case $ch in
1)res=`echo $x + $y | bc`
;;
2)res=`echo $x - $y | bc`
;;
3)res=`echo $x \* $y | bc`
;;
4)res=`echo "scale=2; $x / $y" | bc`
;;
esac

#display result
echo "Result : $res"
