#!/bin/bash

echo "Welcome to Snake And Ladder Game"

player=1
position=0

#for generating dice roll
calRandom=$(( RANDOM%6 + 1 ))
echo $calRandom


