#!/bin/sh


	echo -n "Please enter a name: " #prompt user for input
        read name #read user input

        echo -n "Please enter the address: " #prompt user for input
        read address #read user input

        echo -n "Please the phone number: " #prompt user for input
        read phone_number #read user input

        echo "$name ; $address ; $phone_number" >>book.txt



#!/bin/sh

	echo -n "Please enter the name of the person to find personal account  information: " #prompt user for input
        read query #read user input

        echo "Name ; Address ; Phone number" #prompt user for input
        grep -i $query book.txt 


#!/bin/sh


	echo -n "Enter the name of the person whose information  you want to delete: " #prompt user for input
        read name #read user input


        sed -i '/$name/d' book.txt

 #!/bin/sh

	exit=0
	while [ $exit -ne 1 ]
        do
            echo -e "add, find, delete, exit: " #operations 
            read input

            if [ "$input" = "add" ] #adding user input 
            then
                ./path_to_the_addition_script/name_of_the_addition_script

            elif [ "$input" = "find" ] #finding user input
            then
                ./path_to_the_find_script/name_of_the_find_script
            elif [ "$input" = "del" ] #deleting user input
            then 
                ./path_to_the_find_script/name_of_the_find_script
            elif [ "$input" = "del" ] #deleting user input
            then
                ./path_to_the_deletion_script/name_of_the_deletion_script
            elif [ "$input" = "exit" ] 
            then
                exit=1
            fi
	done

	exit 0


