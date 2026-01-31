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