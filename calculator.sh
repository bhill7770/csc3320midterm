# !/bin/bash

echo "Please enter two numbers : " #prompt user input

read x1 # input 1
read x2 # input 2  

echo "Please enter a choice [1-4]  :" # prompt user input 

echo "1. Add [+]" # addition operation
echo "2. Subtract [-]" # subtraction operation
echo "3. Divide [÷]" # division operation 
echo "4. Multiply [*]" # muliplication operation 

read uc 

#method for calculator operations 
case $uc in

  1) res='echo $x1 + $x2 | bc'
  ;;
  2)res=`echo $x1 - $x2 | bc`
  ;;
  3)res=`echo $x1 \* $x2| bc`
  ;;
  4)res=`echo "scale=2; $x1 / $x2" | bc`
  ;;
esac
echo "Result : $res"
