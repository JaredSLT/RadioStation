#!/bin/bash
max=$(ls recordings/$1/prayers/$2/ | wc -l)
random_number=$((RANDOM % $max))
aplay recordings/$1/prayers/$2/$random_number.wav
