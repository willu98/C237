#!/bin/sh
DATE=`date +'%Y%m%d'`
cd ~/C237/scripts/activity2
#can also do for i in `ls | grep -v .sh`
for i in `ls`
do
	if [[ $i =~ .sh$ ]]
	then
		continue
	else
		mv $i $i.$DATE
	fi
done

