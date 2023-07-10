#! /bin/bash

PS3="Select your lanuage: "
select lng in Bash Java C Quit
do 
    case $lng in 
        "Bash")
            echo "$lng - that's what er are talking about"
            break;;
        "Java")
            echo "$lng - Is your VM ready?"
            break;;
        "C")
            echo "$lng - Back to the basics"
            break;;
        "Quit")
            echo "We are done, exit"
            break;;
        *)
            echo "Invalid option please select valid option";;
    esac
done