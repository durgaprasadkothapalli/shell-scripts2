#!/bin/bash
ID=$($id -u)

VALIDATE( ){

if [ $1 -ne 0 ]
then
  echo "error::$2 is failed"
  exit 1
else    
   echo "$2 is failed"
 fi
}

ID=$($id -u)

if [ $ID -ne 0 ]
then
  echo "error::please run the script"
  exit 1
else    
   echo "you are root user"
fi

yum install git -y

VALIDATE $?"git installation is sucess"


yum install mysql -y

VALIDATE $?"mysql installation is sucess"
