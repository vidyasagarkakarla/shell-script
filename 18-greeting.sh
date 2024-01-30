#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, Specify the name (mandatory)"
    echo "-w, Specify the sishes. ex Good Morning"
    echo "-h, Display Help and exit"
}

while getopts ":n:w:h" opt ; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARGS";;
        h|*) USAGE; exit;;
    esac 
done
