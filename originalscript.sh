#Programming: Brianna Hill bhill28@student.gsu.edu
#!/bin/bash
#script.sh

function find_statments() { #To find function
# Now to initialize array index counter 
i=0 
# Iterate for separation between periods. Read in array 
while IFS =. read -r -a line
do 
IFS="."
# Iterate each elements of array line for stat in ${line[@]}
do 
# Assigning elements to array statements
statements[i]=$(echo $stat | sed 's/^ //g')
# Increment counter
i=$((i+1))
done
done < $1
echo "There are total ${#statements[@]} statements"
}
# See if argument is passed
if(($#==1))
then
#Now set file to $1
file=$1
else
# Prompt user for a file 
echo -n "Text file: "
read file
fi
# To see if the file exists
if [ -f $file ]
then 
# Prompt to call the function
find_statements $file
else
# Prompt to display error and exit 
echo "$file: file does not exist!"
exit 1 
fi 
