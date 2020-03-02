#!/bin/bash

echo "Welcome to Snake And Ladder Game"

player=1
position=0

#for generating dice roll
calRandom=$(( RANDOM%6 + 1 ))
echo $calRandom

#repeat till the winning player reaches 100
while [[ position -le 100 ]]
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
  position=$(( $position+$calRandom ))
#snake
 elif [[ $option -eq 3 ]]
 then
  position=$(( $position-$calRandom ))
 else
  echo "wrong input"
 fi

done

echo $position

