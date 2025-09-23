#!/bin/bash

user=$(id -u)
    if [ $user -nq 0 ]; then 
echo "please go with root user"
exit 1
    fi

dnf install mysql -y 

    if [ $? -nq 0 ]; then 
echo "try again"
exit 1
    else
echo "ok installed"
fi 