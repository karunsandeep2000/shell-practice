#!/bin/bash

Number=$1

if [ $Number -lt 10 ]
    echo "Number is less than $Number"

else [ $Number -gt 10 ]
    echo "Number is greater than $Number"
fi