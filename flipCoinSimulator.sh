#! /bin/bash -x

echo "***** Welcome to Flip Coin Simulation Script. *****"

isHead=0
isTail=1


flipResult=$((RANDOM%2))

if [ $flipResult -eq $isHead ]
then
	echo "Heads"
else
	echo "Tails"
fi
