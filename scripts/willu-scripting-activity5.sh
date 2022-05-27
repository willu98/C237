#!/bin/sh

read NUMBER
RESULT=0
DIGIT_POS=$((10**(${#NUMBER}-1)))
NEGATIVE=1

if [[ $NUMBER -lt 0 ]]
then
	NUMBER=$((NUMBER*-1))
	NEGATIVE=-1
	#neg sign adds 1, must del
	DIGIT_POS=$((DIGIT_POS/10))
fi

while [ $NUMBER -ne 0 ]
do
	DIGIT=$(($NUMBER%10))
	NUMBER=$(($NUMBER/10))
	#echo $(($DIGIT_POS*$DIGIT))
	RESULT=$(($RESULT+$DIGIT*$DIGIT_POS))
	DIGIT_POS=$(($DIGIT_POS/10))	
done

echo $((RESULT*$NEGATIVE))
