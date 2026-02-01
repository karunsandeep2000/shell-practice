#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then

  echo "Please run this script as root user"

  exit 1

fi

Validate() {
  if [ $1 -ne 0 ] ; then
    echo "$2 installation failed"
    exit 1
  else
    echo "$2 installed successfully"
  fi
}

dnf install nginx -y
Validate $? "Nginx"

dnf install mysql-server -y
Validate $? "MySQL"

dnf install nodejs -y
Validate $? "NodeJS"