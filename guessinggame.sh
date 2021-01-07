#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files there are in the current directory?"
read response
total_files=$(ls|wc -l)

function guess {
	if [[ $1 -eq $2 ]]
	then
		echo "you_rock"
	elif [[ $1 -gt $2 ]]
	then
		echo "1000"
	else
		echo "1"
	fi
}

result=$(guess response total_files)

until [ $result = "you_rock" ]
do
	echo "Please try again: "
	read response
	result=$(guess response total_files)
	if [[ $result -eq 1000 ]]
	then
		echo "Your answer is too high"
	elif [[ $result -eq 1 ]]
	then
		echo "Your answer is too low"
	fi
done

echo "congratulations you rock!"
