#!/bin/bash

echo ""

for DIRECTORY in $(find ./* -maxdepth 0 -type d -ls | wc -l); do printf "=====[ Directories: $DIRECTORY ]====="'\n';done
echo ""
#only lists directories in current folder
ls -ld */ --color=auto
echo ""

for FILES in $(ls -l | grep -vE '^d|^l' |wc -l); do printf "=====[ Files: $FILES ]====="'\n';done
echo ""
#only lists files in current folder (grep -v ignores strings, ^d is for the directories and ^l is for the links)
#tail -n +2 means show everything after line 2. Doing this to get rid of the "total" at the top
ls -l | tail -n +2 | grep -vE '^d|^l'
echo ""

for LINKS in $(find ./* -maxdepth 0 -type l -ls | wc -l); do printf "=====[ Links: $LINKS ]====="'\n';done
echo ""
#only lists links. the awk portion can be left out. I just wanted to clean up the output a little bit
find ./* -maxdepth 0 -type l -ls |awk '{for(i=3; i<=13; i++) printf $i"  "; print ""}'
echo ""

for TOTAL in $(ls -l |wc -l); do printf "=====[ Total: $TOTAL ]====="'\n';done
echo ""
