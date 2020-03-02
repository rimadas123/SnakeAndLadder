#!/bin/bash

echo "Welcome to Snake And Ladder Game"

#constants
GOAL=100

#variables
player=1
position=0
count=0

#for generating dice roll
calRandom=$(( RANDOM%6 + 1 ))
echo $calRandom

#checks if the position reached till 100
while (( position <= $GOAL ))
do
	(( count++ ))
	#for checking the options like no play, snake or ladder
	option=$(( RANDOM%3 + 1 ))
		#no play
		if [[ $option -eq 1 ]]
		then
			position=$position
			echo "Current position is "$position
		#ladder
		elif [[ $option -eq 2 ]]
		then
			echo "random num->" $calRandom
			position=$(( $position+$calRandom ))
			echo "Current position is "$position
		#snake
		elif [[ $option -eq 3 ]]
		then
			position=$(( $position-$calRandom ))
			echo "Current position is "$position
		else
		echo "Wrong input"
		fi
done
echo "Player has reached the winning goal: " $position
echo "Number of times the dice was played: " $count
