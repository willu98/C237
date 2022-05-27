#!/bin/sh
num=$(($RANDOM%5+5))
product=1
sum=0
count=0
min="NULL"
max="NULL"
declare -a arr
for ((i=0;i<$num;i++))
do
	if [[ count -lt 5 ]]
	then
		read -p "please enter in a number: " input	
	else
		read -p "Please enter a number or enter stop: " input
		if [[ $input == "stop" ]]
		then
			break
		fi
	fi

	if [[ $min == "NULL" ]]
	then
		min=$input
	else
		if [[ $input -lt $min ]]
		then
			min=$input
		fi
	fi

	if [[ $max == "NULL" ]]
        then
                max=$input
        else
                if [[ $input -gt $max ]]
                then
                        max=$input
                fi
        fi
	sum=$(($sum+$input))
	product=$(($product*$input))
	count=$(($count+1))
	arr[$i]=${input}
done

echo ${arr[@]}
echo PRODUCT ${product}
ave=$(echo "scale=2;$sum/$count" | bc)
echo SUM ${sum}
echo AVE ${ave}
echo MIN VALUE ${min}
echo MAX VALUE ${max}

