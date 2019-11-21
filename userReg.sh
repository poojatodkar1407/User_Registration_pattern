#!/bin/bash -x

echo "User Registration form"

read -p "Enter user name: " firstName
read -p "Enter Last name: " lastName
read -p "Enter Email Id of user name: " emailId
read -p "Enter Mobile number: " mobileNumber
namePattern="^[A-Z]{1}[a-z]{2,}$"
emailPattern="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z0-9A-Z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"
mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"
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

function mobileNumberValidation(){

	if [[ $mobileNumber =~ $mobilePattern ]]
        then
                echo "Valid $mobileNumber"
        else
                echo "Invalid $mobileNumber"
        fi

}

firstNameValidation
lastNameValidation
emailIdValidation
mobileNumberValidation
