#!/bin/bash
ID=$($id -u)

if [ $ID -ne 0 ]
then
  echo "error::please run the script"
  exit 1
else    
   echo "you are root user"
fi

yum install gittt -y
if [ $? -ne 0 ]
then
echo "error::installing mysql is failed"
exit 1
else"installing mysql is sucess"
fi
