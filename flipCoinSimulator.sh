#!/bin/bash

num=$((RANDOM%2))

if [ $num -eq 0 ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi
value=0;
value1=0;
read -p "Enter number : " n
for (( i=1; i <= $n; i++ ))
do
	num1=$((RANDOM%2))
	if [ $num1 == 0 ]
	then
		value=$(($value+1))
		echo "Head won $value times"
	fi
	if [ $num1 == 1 ]
	then
		value1=$(($value1+1))
		echo "Tail won $value1 times"
	fi
done

for (( i=1; i <= 42; i++ ))
do
        num2=$((RANDOM%2))
        if [ $num2 == 0 ]
        then
                value=$(($value+1))
#                echo "Head won $value times"
        fi
        if [ $num2 == 1 ]
        then
                value1=$(($value1+1))
#                echo "Tail won $value1 times"
        fi
	if [ $value == 21 ]
                then
                        echo "Head wins 21 times"
	elif [ $value1 == 21 ]
                then
                        echo "Tail wins 21 times"
		break;
        fi
done
if [ $value -eq 21 ] && [ $value1 -eq 21 ]
then
	echo "TIE"
	elif [ $value -eq 21 ] && [ $value1 -lt 21 ]
	then
		result=$(($value-$value1))
		echo "Head won 21 times"
		echo "Head won by $result times"
	elif [ $value1 -eq 21 ] && [ $value -lt 21 ]
	then
		result1=$(($value1-$value))
		echo "Tail won 21 times"
		echo "Tail won by $result1 times"
fi
