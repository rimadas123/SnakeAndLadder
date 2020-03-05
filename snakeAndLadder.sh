#!/bin/bash -x

echo "Welcome to Snake And Ladder Game"

#constants
GOAL=100

#variables
chance=0
position1=0
position2=0
count=0

#for generating dice roll
rollDice=$(( RANDOM%6 + 1 ))

function playerPositionChange()
{
	local optionValue=$1
	local rollDiceValue=$2
	local position=$3

		#no play
		if [[ $optionValue -eq 1 ]]
		then
			position=$position
		#ladder
		elif [[ $optionValue -eq 2 ]]
		then
			position=$(( $position+$rollDiceValue ))
		#snake
		elif [[ $optionValue -eq 3 ]]
		then
			position=$(( $position-$rollDiceValue ))
			if [[ position -lt 0 ]]
			then
				position=0
			fi
		fi

	echo $position
}

#checks if the position reached till 100
while (( position1 <= $GOAL && position2 <= $GOAL ))
do
	option=$(( RANDOM%3 + 1 ))
	#for checking the options like no play, snake or ladder
	if (( chance == 0 ))
	then
		position1="$( playerPositionChange $option $rollDice $position1 )"
		count=$(( $count+1 ))
		chance=1
	elif (( chance == 1 ))
	then
		position2="$( playerPositionChange $option $rollDice $position2)"
		count=$(( $count+1 ))
		chance=0
	fi
done

if [[ $position1 -eq $GOAL ]]
then
	echo "Player 1 has won the game"
elif [[ $position2 -eq $GOAL ]]
then
	echo "Player 2 has won the game"
fi


