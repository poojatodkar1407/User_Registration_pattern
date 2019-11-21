#!/bin/bash -x

echo "User Registration form"

read -p "Enter user name: " firstName
read -p "Enter Last name: " lastName
namePattern="^[A-Z]+[a-zA-Z]{2,}$"

function firstNameValidation(){

	if [[ $firstName =~ $namePattern ]]
	then
		echo "Valid $firstName"
	else
		echo "Invalid $firstName"
	fi
}

function lastNameValidation(){

	if [[ $lastName =~ $namePattern ]]
	then
		echo "Valid $lastName"
	else
		echo "Invalid $lastName"
	fi
}

firstNameValidation
lastNameValidation
