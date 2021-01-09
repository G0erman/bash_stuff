#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files there are in the current directory?"

total_files=$(ls|wc -l)

function guess {
	# Compare user response with calculate files
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

function decode_msg {
	# Interprete guess result
        read response
        result=$(guess response total_files)
        if [[ $result -eq 1000 ]]
        then
                echo "Your answer is too high."
        elif [[ $result -eq 1 ]]
        then
                echo "Your answer is too low."
	fi
}

decode_msg
until [ $result = "you_rock" ]
do
	echo "Please try again: "
	decode_msg
done

echo "congratulations you rock!"
