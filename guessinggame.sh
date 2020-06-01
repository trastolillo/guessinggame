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

if [[ $answer =~ ^[0-9]+$ ]]
then
	until [[ $answer -eq $number ]]
	do
		guessresult $answer
		read answer
	done
	echo "You win"
fi

