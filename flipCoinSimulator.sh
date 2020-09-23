#!/bin/bash -x

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
