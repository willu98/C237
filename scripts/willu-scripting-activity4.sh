#!/bin/sh
read PASSWORD
if [[ ${#PASSWORD} -lt 8 ]]
then
	echo password less than 8 characters
	exit 2
fi	

#ALPHANUMERIC ONLY
if [[ ${PASSWORD} =~ [a-z] && ${PASSWORD} =~ [A-Z] && ${PASSWORD} =~ [0-9] ]]
then
	echo valid
else
	echo invalid
fi

