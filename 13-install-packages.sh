#/bin/bash

ID=$(id -u)


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "scriptstartted executing at $TIMESTAMP"&>. $LOGFILE

VALIDATE(){
    IF [ $1 -NE 0 ]
    then
    echo -e"$2.....$R failed $N"
    else
    echo-e "$2....$g sucess $N"

    fi
}

if [ $ID -ne 0 ]
then
echo "error ;; please run the script with root acess"
exit 1
else
echo " you are root acess"
fi

#echo "all arguments passed $@"
# git mysql postfix net-tools
#packages=git for first time

for package in $@
do
  
  yum  list install $package &>> $  LOGFILE # check installed or not
   if [ $? -ne 0 ] 
   then
     yum install $package -y  &>> $LOGFILE
     VALIDATE $? "installation of $package " #validate

     else
     echo -e"$packages" is already installed ...$Y skipping $N"
     fi
     done