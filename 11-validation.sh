#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then

  echo "Please run this script as root user"

  exit 1

fi
echo "Installing Nginx web server"

dnf install nginx -y

if [ $? -ne 0 ] ; then

  echo "Nginx installation failed"

  exit 1
else

  echo "Nginx installed successfully"

fi

dnf install mysql-server -y
if [ $? -ne 0 ] ; then

  echo "MySQL installation failed"

  exit 1
else

  echo "MySQL installed successfully"

fi
dnf install nodejs -y
if [ $? -ne 0 ] ; then
    echo "NodeJS installation failed"
    
    exit 1
    else
    
    echo "NodeJS installed successfully"
    
    fi