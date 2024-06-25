#/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo -e "error ;; please run the script with root acess"
exit 1
else
echo "are root"
fi
