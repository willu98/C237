#!/bin/sh
declare -a QUESTIONS
declare -a ANSWERS
cd ~/scripts
COUNTER=0
cat a7_q.txt | while read line
do	
	QUESTIONS[$COUNTER]=$line
	echo $[]
	COUNTER=$(($COUNTER+1))
done
COUNTER=0
cat a7_a.txt | while read line
do
        ANSWERS[$COUNTER]=$line
	COUNTER=$(($COUNTER+1))
done
echo ${QUESTIONS[0]}
