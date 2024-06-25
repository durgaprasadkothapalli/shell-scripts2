#!/bin/bash
ID=$($id -u)

if [ $ID -ne 0 ]
then
  echo "error::please run the script"
  exit 1
else    
   echo "you are root user"
fi

yum install git -y

if [ $? -ne 0 ]
then
echo "error::installing git is failed"
exit 1
else
echo"installing git is sucess"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
echo "error::installing mysql is failed"
exit 1
else
echo"installing mysql is sucess"
fi