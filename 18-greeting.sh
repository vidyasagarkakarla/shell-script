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
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h) USAGE; exit;;        
    esac 
done

if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
    echo "ERROR: Both -n and -w are manadatory options."
    USAGE
    exit 1
fi

echo "Heloo $NAME. $WISHES. I have been learning shell script."