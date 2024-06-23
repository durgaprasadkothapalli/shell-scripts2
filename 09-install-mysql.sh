#!/bin/bash
ID=$($id -u)

if [ $ID -ne 0 ]
then
  echo "error::please run the script"
else    
   echo "you are root user"
fi

yum install git -y

