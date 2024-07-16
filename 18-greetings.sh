#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo"USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, Specify the name (mandatory)"
    echo " -w, Specify the wishes . ex, Good Morning"
    echo "-h, Display help and exit "

    }

    while getopts ":n :w:h"opt; do
    case $opt in
    n)NAME="$OPTARG";;
    W) WISHES="$OPTARG";;
    h|*)USAGE;exit;;
esac
done