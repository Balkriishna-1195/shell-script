#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ....$R failure $N"
        exit 1
    else
        echo "$2 .....$G Success $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1
else 
   echo "You are super user"
fi

dnf install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"

dnf install git -y &>> $LOGFILE
VALIDATE $? "installing git"


