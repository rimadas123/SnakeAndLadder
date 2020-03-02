#!/bin/bash

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

#checks if the position reached till 100
while (( position1 <= $GOAL && position2 <= $GOAL ))
do
	(( count++ ))
	option=$(( RANDOM%3 + 1 ))
	#for checking the options like no play, snake or ladder
	if (( chance == 0 ))
	then
		#no play
		if [[ $option -eq 1 ]]
		then
			position1=$position1
		#ladder
		elif [[ $option -eq 2 ]]
		then
			position1=$(( $position1+$rollDice ))
		#snake
		elif [[ $option -eq 3 ]]
		then
			position1=$(( $position1-$rollDice ))
		chance=1
		fi
	elif (( chance == 1 ))
	then
		#no play
      if [[ $option -eq 1 ]]
      then
         position2=$position2
      #ladder
      elif [[ $option -eq 2 ]]
      then
         position2=$(( $position2+$rollDice ))
      #snake
      elif [[ $option -eq 3 ]]
      then
         position2=$(( $position2-$rollDice ))
      chance=0
		fi
	fi
done

if [[ $position1 -eq 100 ]]
then
	echo "Player 1 has won the game"
elif [[ $position2 -eq 100 ]]
then
	echo "Player 2 has won the game"
else
	echo "Its a tie"
fi

