#!/bin/bash

USERID=$(id -u)

if [ $USERID -nq 0 ]; then 
    echo "error"
    exit 1
fi 

validate(){
    if [$1 -ne 0 ]; then
    echo "error $2"
    else
    echo "install $2" 
    fi
}

dnf install mysql -y 
validate $? "mysql"

dnf install nignix -y 
validate $? "nignix"


dnf install python3 -y 
validate $? "python3"
fi 
