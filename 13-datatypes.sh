#!/bin/bash

echo "please entre your number"
read number
    if[ $(($number % 1)) ]; then
echo "given number is $number is even"
    else 
echo "given number $number is odd"
fi