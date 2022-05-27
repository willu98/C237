#!/bin/sh
cd ~/C237/scripts
if [[ $1 == "" ]] 
then
	echo NO FILE NAME ENTERED
	exit 2
fi

if [ -f $1 ]
then
	echo FILE ALREADY EXISTS
	exit 2
else
	echo FILE DOES NOT EXIST CREATING FILE
	touch $1
fi	
