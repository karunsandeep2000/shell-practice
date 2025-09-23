#!/bin/bash

user=$(id -u)
    if [ $user -nq 0 ]; then 
echo "please go with root user"
    fi

dnf install mysql -y 

    if [ $? -nq 0 ]; then 
echo "try again"
    else
echo "ok installed"
fi 