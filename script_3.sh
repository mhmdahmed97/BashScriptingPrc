#!/bin/bash

#FUNCTIONS

function score_sum {
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
}
score_sum

function create_file() {
	file_name=$1
	touch $file_name
	
}

create_file test.txt
create_file test2.sh

function sum() {
total=$(($1+$2))
return $total
}

sum 2 10
result=$?
#question mark captures value returned by last command

echo "Sum of 2 and 10 is : $result"
