#!/bin/bash

echo "Welcome to Snake And Ladder Game"

#constants
GOAL=100

#variables
player=1
position=0

#for generating dice roll
calRandom=$(( RANDOM%6 + 1 ))
echo $calRandom

#checks if the position reached till 100
while (( position <= $GOAL ))
do
	#for checking the options like no play, snake or ladder
	option=$(( RANDOM%3 + 1 ))
		#no play
		if [[ $option -eq 1 ]]
		then
			position=$position
		#ladder
		elif [[ $option -eq 2 ]]
		then
			echo "random num->" $calRandom
			position=$(( $position+$calRandom ))
		#snake
		elif [[ $option -eq 3 ]]
		then
			position=$(( $position-$calRandom ))
		else
		echo "Wrong input"
		fi
done
echo "Player has reached the winning goal: " $position
