# !/bin/bash 

echo "Please enter two numbers : "

read x1
read x2

echo "Enter a choice [1-4]  :"

echo "1. Add [+]"
echo "2. Subtract [-]"
echo "3. Divide [÷]"
echo "4. Multiply [*]"
echo "5. Invalid/Cancel"

read uc

case $uc in

	1) res='echo $x1 + $x2 | bc'
                ;;
        2) res='echo $x1 - $x2 | bc'
                ;;
        3) res='echo $x1 \* $x2 | bc'
                ;;
        4) res='echo 'scale=2; $x1 / $x2 | bc'
;;

esac
echo "Result ; $res'






