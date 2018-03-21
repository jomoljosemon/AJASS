#!/bin/sh
if [ $# -ne 2 ]
then
	echo "no.of arguments is incorrect"
else
	echo "no.of arguments is correct"
fi
if [ -f "$1" ]
then
	echo "file exists"
else
	echo "file not exists"
fi
if [ -f "$1" ]
then
	i=$(grep "$2" "$1")
	if [ "$i" = "$2" ]
	then
		echo "already exists"
	else
   		echo $2 >> $1
		echo entered 
	fi
fi

