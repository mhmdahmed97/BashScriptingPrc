#!/bin/bash

#Explicitly taking user input in script-----------------

echo "Reading user input"

#user_passwd stored the result of read
read -p "Please enter password: " user_passwd

echo "thanks for password $user_passwd"

#special variable that allows multiple arguements  on command line----------------------

echo "All params: $*"

#special var that gives num of arguements 

echo "Num of params: $#"


#FOR LOOP---------------------------------------------------------

for param in $*
	do
		if [ -d "$param" ]
		then
			echo "executing scripts in this directory: $param"
		fi
		echo "$param"
	done

#WHILE LOOP -----------------------------------------------------

sum=0
while true
	do
		read -p "enter a score" score
		if [ "$score" == "q" ]
		then
			break
		fi
		#double brackets used for arithmatic operations, else it is considered a string
		sum=$(($sum+$score))
		echo "total score: $sum"
	done
