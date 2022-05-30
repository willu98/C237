#!/bin/sh

count=0
declare -a arr

for i in $(cat a11.txt)
do
	arr[count]=$i
	count=$(($count+1))
done 

for i in ${arr[@]}
do
	echo $i
done | sort -nu

