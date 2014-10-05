#!/bin/bash - 
numCommit=
while getopts ":n:" opt; do
    case $opt in
    n)
        echo "require a number to indicate the commits, now is $OPTARG" >&2
        numCommit=$OPTARG
        ;;
    \?)
        echo "invalid option:-$OPTARG">&2
        exit 1
        ;;
    :)
        echo "option -$OPTARG requires an argument." >&2
        exit 1
        ;;
    esac
done
echo ${numCommit}
cd ~/demo
echo a${numCommit} > a${numCommit}.txt
git add a${numCommit}.txt 
git commit -m "add a${numCommit}.txt"
