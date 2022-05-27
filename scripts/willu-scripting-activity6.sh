#!/bin/sh
read -p "Integer a:" a
read -p "Integer b:" b
if [[ $a =~ ^[^0-9]+$ || $b =~ ^[^0-9]+$ ]]
then
	echo NUMBERS ONLY
	exit 2
fi


if [[ a -gt b ]]
then
	echo True
else
	echo False
fi
