#!/bin/sh
cd ~/C237/scripts

IFS=$'\n'
declare -a QUESTIONS



#function cpFileToArray() {
#	COUNTER=0	
#	local txtFile=$1
#	shift
#}

COUNTER=0
for i in $(cat a7_q.txt)
do
        QUESTIONS[$COUNTER]=$i
	COUNTER=$(($COUNTER+1))
done
COUNTER=0
for i in $(cat a7_a.txt)
do
        ANSWERS[$COUNTER]=$i
        COUNTER=$(($COUNTER+1))
done

len=${#QUESTIONS[@]}
COUNTER=0
echo Questionaire: True or False only \(case insensitive\)
for ((i=0;i<$len;i++))
do
	read -p "${QUESTIONS[$i]}:" answer
	answer=${answer,,}
	if [[ $answer == ${ANSWERS[$i] } ]]
	then
		echo CORRECT
		COUNTER=$(($COUNTER+1))
	else
		echo INCORRECT
	fi
done

echo ${COUNTER}/${#QUESTIONS[@]} CORRECT

