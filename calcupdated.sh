# !/bin/bash 

echo "Please enter two numbers : " #prompt user for input 

read x1 #input 1
read x2 #input 2

echo "Enter a choice [1-4]  :" #prompt user for input 

echo "1. Add [+]" # addition
echo "2. Subtract [-]" #subtraction
echo "3. Divide [÷]" #division
echo "4. Multiply [*]" #multiplication
echo "5. Invalid/Cancel" #cancel

read uc #scanned input

case $uc in

	1) res='echo $x1 + $x2 | bc' #method for adding 
                ;;
        2) res='echo $x1 - $x2 | bc' #method for subtracting
                ;;
        3) res='echo $x1 \* $x2 | bc' #method for multiplying 
                ;;
        4) res='echo 'scale=2; $x1 / $x2 | bc'  
;;

esac 
echo "Result : $res' //display result 






