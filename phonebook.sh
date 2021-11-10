#!/bin/sh


	echo -n "Please enter a name: "
        read name

        echo -n "Please enter the address: "
        read address

        echo -n "Please the phone number: "
        read phone_number

        echo "$name ; $address ; $phone_number" >>book.txt



#!/bin/sh

	echo -n "Please enter the name of the person to find personal account  information: "
        read query

        echo "Name ; Address ; Phone number"
        grep -i $query book.txt


#!/bin/sh


	echo -n "Enter the name of the person whose information  you want to delete: "
        read name


        sed -i '/$name/d' book.txt

 #!/bin/sh

	exit=0
	while [ $exit -ne 1 ]
        do
            echo -e "add, find, delete, exit: "
            read input

            if [ "$input" = "add" ]
            then
                ./path_to_the_addition_script/name_of_the_addition_script

            elif [ "$input" = "find" ]
            then
                ./path_to_the_find_script/name_of_the_find_script
            elif [ "$input" = "del" ]
            then 
                ./path_to_the_find_script/name_of_the_find_script
            elif [ "$input" = "del" ]
            then
                ./path_to_the_deletion_script/name_of_the_deletion_script
            elif [ "$input" = "exit" ]
            then
                exit=1
            fi
	done

	exit 0


