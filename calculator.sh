# !/bin/bash

echo "Please enter two numbers : "

read x
read y

echo "Please enter a choice [1-4]  :"

echo "1. Add [+]"
echo "2. Subtract [-]"
echo "3. Divide [÷]"
echo "4. Multiply [*]"

read uc

case $uc in

	1) res='echo $x + $y | bc'
