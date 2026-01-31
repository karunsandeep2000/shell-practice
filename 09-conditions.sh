#!/bin/bash

num=$1

if [ $num -gt 20 ]; then 
 
 echo "$num is greater than 20"
  
exit 1 

fi  
  
echo " $num is less than 20"