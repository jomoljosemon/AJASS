#!/bin/sh
if [ $# -ne 2 ]
then
	echo "no of arguments incorrect"
else
	echo " no of argument is correct"
fi
if [ -f "$1" ]
then
	echo "file exist"
else
	echo "file not exist"
fi
if [ -f "$1" ]
then
	flag=$(grep "$2" "$1")
	if [ "$flag" = "$2" ]
	then
		echo  "username exists"
	else
		echo $2 >>$1
		echo entered
	fi
fi 
