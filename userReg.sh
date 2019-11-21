#!/bin/bash -x

echo "User Registration form"

read -p "Enter user name: " firstName
read -p "Enter Last name: " lastName
read -p "Enter Email Id of user name: " emailId
namePattern="^[A-Z]{1}[a-z]{2,}$"
emailPattern="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z0-9A-Z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"

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

function emailIdValidation(){

	if [[ $emailId =~ $emailPattern ]]
	then
		echo "Valid $emailId"
	else
		echo "Invalid $emailId"
	fi
}

firstNameValidation
lastNameValidation
emailIdValidation
