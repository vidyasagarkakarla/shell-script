#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "you are root user"
fi
yum install mysql -y
if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is success"
fi
yum install git -y
if [ $? -ne 0 ]
then
    echo "ERROR:: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is success"
fi