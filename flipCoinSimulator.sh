#! /bin/bash -x

echo "***** Welcome to Flip Coin Simulation Script. *****"

isHead=0
isTail=1
headCount=0
tailCount=0

read -p "How many times you want to flip the coin : " flipCount

for (( i=1; i<=$flipCount; i++ ))
do
	flipResult=$((RANDOM%2))

	if [ $flipResult -eq $isHead ]
	then
		echo "Heads"
                headCount=$((headCount+1))
	else
		echo "Tails"
                tailCount=$((tailCount+1))
	fi
done

echo "Head has won "$headCount" times."
echo "Tail has won "$tailCount" times."
