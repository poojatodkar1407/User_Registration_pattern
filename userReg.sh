#!/bin/bash -x

echo "User Registration form"

read -p "Enter user name: " firstName

firstNamePattern="^[A-Z]+[a-zA-Z]{2,}"

if [[ $firstName =~ $firstNamePattern ]]
then
	echo "valid $firstName"
else
	echo "invalid $firstName"
fi
