#! /bin/bash -x

echo "***** Welcome to Flip Coin Simulation Script. *****"

isHead=0
isTail=1
headCount=0
tailCount=0

while [[ $headCount -le 21 && $tailCount -le 21 ]]
do
        flipResult=$((RANDOM%2))
        if [ $flipResult -eq $isHead ]
        then
                headCount=$((headCount+1))
        else
                tailCount=$((tailCount+1))
        fi
done

if [ $headCount -gt $tailCount ]
then
        echo "Head is won by "$((headCount-tailCount))
elif [ $tailCount -gt $headCount ]
then
        echo "Tail is won by "$((tailCount-headCount))
else
        echo "Game is Tie ! "
fi
