#!/bin/bash

echo "Set up and config"



fileName=config.yaml
echo "Using file $fileName to configure server"

#conditionals in bash
config_dir=$3
if [ -d "$config_dir" ]
then
	echo "reading $config_dir directory..."
	ls_result=$(ls Documents)
else
	echo "$config_dir directory does not exist... "
	echo "Making $config_dir directory..."
	mkdir "$config_dir"
	echo "$config_dir created"

fi
echo "Here is the result of listing items in Documents : $ls_result"

user_group=$2

if [ $user_group == "ahmed" ]
then
	touch hellofile1.txt
	echo "Base if condition is true"
elif [ user_group == "ahmed2" ]
then
	touch hellofile2.txt
	echo "Elif condition is true"
else
	echo "No conditions were true"
fi

#Getting values externally into script

#$1 means the first arguement passed to script
userGroup=$1 

if [ $userGroup == "vaival" ]
then
	echo "Configure relevant servers"
else
	echo "unknown person"
fi

#Explicitly reading user input

