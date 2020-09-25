#!/bin/bash -x

num=$((RANDOM%2))

if [ $num == 0 ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi

declare -A store
store=()
value=0; #value init for how many head occur in multiple flipping of a coin
value1=0; #value1 init for how many tail occur in multiple flipping of a coin
read -p "Enter number for multiple flipping of a coin" n
for (( i = 1; i <= $n; i++ ))
do
	num=$((RANDOM%2))
	if [ $num == 0 ]
	then
			num=H;
			value=$(($value+1))
			echo "Head"
	else
			num=T;
			value1=$(($value1+1))
			echo "Tail"
	fi
	store[$i]=$num
	num1=$value;
	num2=$value1;
done
num3=$num1; #num3=value
num4=$num2; #num4=value1
echo "Value store in dictionary" ${store[@]}
TotalValueInDictionary=${#store[@]}
PercentageForHead=$(($TotalValueInDictionary/$num3))
PercentageForTail=$(($TotalValueInDictionary/$num4))
echo "Percentage of head :" $PercentageForHead
echo "Percentage of tail :" $PercentageForTail
