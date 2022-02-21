#!/bin/bash

echo ""
echo "=====[ Directories ]====="
echo ""
#only lists directories in current folder
ls -ld */ --color=auto
echo ""
echo "Total Directories:" & ls -ld */ |wc -l
#I had an issue with this listing one of my symbolic links, so below is an alternative...
#find ./* -maxdepth 0 -type d -ls | wc -l
echo ""
echo "=====[ Files ]====="
echo ""
#only lists files in current folder (grep -v ignores strings, ^d is for the directories and ^l is for the links)
ls -l | grep -vE '^d|^l'
echo ""
echo "Total Files:" & ls -l | grep -vE '^d|^l' |wc -l
echo ""
echo "=====[ Links ]====="
echo ""
#only lists links. the awk portion can be left out. I just wanted to clean up the output a little bit
find ./* -maxdepth 0 -type l -ls |awk '{for(i=3; i<=13; i++) printf $i"  "; print ""}'
echo ""
echo "Total Links:" & find ./* -maxdepth 0 -type l -ls |awk '{for(i=3; i<=13; i++) printf $i"  "; print ""}' |wc -l
echo ""
