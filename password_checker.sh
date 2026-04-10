#!/bin/bash

check_length(){
    if [ ${#1} -ge 8 ]; then
       return 0
    else 
       return 1
    fi
}


check_number(){
     if [[ $1 =~ [0-9] ]]; then
         return 0
     else 
         return 1
     fi
}

check_uppercase(){
       if [[ $1 =~ [A-Z] ]]; then
           return 0
       else 
           return 1
       fi
}

read -p "Please Enter YOUR Password -: " password

check_length "$password"
length_check=$?

check_number "$password"
number_check=$?

check_uppercase "$password"
uppercase_check=$?

# Final Result
if [[ $length_check -eq 0 && $number_check -eq 0 && $uppercase_check -eq 0 ]]; then
    echo "Strong Password "
else
    echo "Weak Password "

    if [ $length_check -ne 0 ]; then
        echo "- Minimum 8 characters required"
    fi
    if [ $number_check -ne 0 ]; then
        echo "- At least one number required"
    fi
    if [ $uppercase_check -ne 0 ]; then
        echo "- At least one uppercase letter required"
    fi
fi
