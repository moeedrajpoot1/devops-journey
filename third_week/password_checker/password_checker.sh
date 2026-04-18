#!/bin/bash

user_password="Moeed@007"
attempts=5

while [ $attempts -gt 0 ]
do
read -p "Please enter yor password :- " password
if [ "$user_password" == "$password" ]; then
   echo " Login Successful "
   exit 0
else
    echo "wrong password"
    ((attempts--))
    echo "Attempts left : $attempts"
fi

done

echo " Access Block"
