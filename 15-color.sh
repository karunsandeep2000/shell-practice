#!/bin/bash

USERID=$(id -u) 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m

if [ $USERID -nq 0 ]; then
    echo "$R error"
fi

validate(){
    if [ $1 -ne 0 ]; then
    echo "$R error $2"
    else
    echo "$G install $2" 
    fi
}
dnf install mysql -y 
 if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo -e "MySQL already exist ... $Y SKIPPING $N"
fi

dnf install nginx -y 
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo -e "Nginx already exist ... $Y SKIPPING $N"
fi


dnf install python3 -y 
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "Python3 already exist ... $Y SKIPPING $N"
fi
