#!/bin/bash

echo ""
echo "=====[ Directories ]====="
echo ""
#only lists directories in current folder
ls -ld */ --color=auto
echo ""
echo "=====[ Files ]====="
echo ""
#only lists files in current folder (grep -v ignores strings, ^d is for the directories and ^l is for the links)
ls -l | grep -vE '^d|^l'
echo ""
echo "=====[ Links ]====="
echo ""
#only lists links. the awk portion can be left out. I just wanted to clean up the output a little bit
find ./* -maxdepth 0 -type l -ls |awk '{for(i=3; i<=13; i++) printf $i"  "; print ""}'
echo ""
