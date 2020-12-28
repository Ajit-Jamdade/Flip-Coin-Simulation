#! /bin/bash

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

echo "Head won "$headCount" times."
echo "Tail won "$tailCount" times."

if [[ $headCount -gt $tailCount ]]
then
        echo "Result :- Head has won by "$((headCount-tailCount))" points than Tail."
elif [[ $tailCount -gt $headCount ]]
then
        echo "Result :- Tail has won by "$((tailCount-headCount))" points than Head."
elif [[ $headCount -eq $tailCount ]]
then
        echo "Game is Tie !"
	echo "Please wait for few more rounds to know who will win with lead."
        while [[ $((headCount-tailCount)) -lt 2 && $((tailCount-headCount)) -lt 2 ]]
        do
                flipResult=$((RANDOM%2))
                if [[ $flipResult -eq $isHead ]]
                then
                        headCount=$((headCount+1))
                else
                        tailCount=$((tailCount+1))
                fi
        done

        if [[ $((headCount-tailCount)) -ge 2 ]]
        then
                echo "Head is won by "$((headCount-tailCount))
        else
                echo "Tail is won by "$((tailCount-headCount))
        fi

else
        echo ""
fi
