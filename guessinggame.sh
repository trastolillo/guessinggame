#!/bin/bash
#file: guessinggame.sh

echo "GUESS: How many files are in the current directory?"

number=`find * -maxdepth 0 -type f | wc -l`

read answer

guessresult(){
	if [[ $1 -gt $number ]]
	then
		echo "Too high"
	elif [[ $1 -lt $number ]]
	then
		echo "Too low"
	fi
}

until [[ $answer -eq $number ]]
do
	if [[ $answer =~ ^[0-9]+$ ]]
	then
		guessresult $answer
	else
		echo "Only positive numbers"
	fi
	read answer
done

echo "You win"

