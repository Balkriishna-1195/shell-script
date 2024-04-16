#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1
else 
   echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "installation of mysql... failure"
    exit 1
else
    echo "onstallation of mysql...success"
fi
dnf install git -y

if [ $? -ne 0 ]
then 
    echo "installation of git... failure"
    exit 1
else
    echo "onstallation of git...success"
fi

