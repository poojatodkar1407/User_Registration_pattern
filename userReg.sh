#!/bin/bash -x

echo "User Registration form"

read -p "Enter user name: " firstName
read -p "Enter Last name: " lastName
read -p "Enter Email Id of user name: " emailId
read -p "Enter Mobile number: " mobileNumber
read -p "Enter password: " password

namePattern="^[A-Z]{1}[a-z]{2,}$"
emailPattern="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z0-9A-Z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"
mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"
passwordPattern="^[a-zA-Z]{8}"
passwordPattern1="([A-Z]+[a-z]*)+|([a-z]*[A-Z]+)+|([a-z]*[A-Z]+[a-z]*)+)"
checkPassword3="^(.*+[0-9]+.*[A-Z]+[a-zA-Z0-9])"
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

function passwordValidation(){
	
	if [[ $password =~ $checkPassword3  ]] &&  [[ ${#password} -ge 8 ]]
        then
                echo "Valid $password"
        else
                echo "Invalid $password"
        fi


}

firstNameValidation
lastNameValidation
emailIdValidation
mobileNumberValidation
passwordValidation
