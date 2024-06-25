#/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "error ;; please run the script with root acess"
exit 1
else
echo " you are root acess"
fi
echo "all arguments passed $@"