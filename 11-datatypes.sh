#!/bin/bash

Number=$1

if [ $Number -lt 10 ] then
    echo "Number is less than $Number"

else [ $Number -gt 10 ] then
    echo "Number is greater than $Number"
fi