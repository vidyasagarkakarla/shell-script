#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2.....  $R FAILED $N"
        exit 1
    else
        echo -e "$2.... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means reverse of if, indicating condition end

echo "All arguments passed: $@"