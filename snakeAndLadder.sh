#!/bin/bash

echo "Welcome to Snake And Ladder Game"

player=1
position=0

calRandom=$(( RANDOM%6 + 1 ))
echo $calRandom

option=$(( RANDOM%3 + 1 ))

 if [[ $option -eq 1 ]]
 then
  position=$position
 elif [[ $option -eq 2 ]]
 then
  position=$(( $position+$calRandom ))
 elif [[ $option -eq 3 ]]
 then
  position=$(( $position-$calRandom ))
 else
  echo "wrong input"
 fi


echo $position
