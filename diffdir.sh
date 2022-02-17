#!/bin/bash

#compare two directories
diff -y <(ls -x1 ./$1/ ) <(ls -x1 ./$2/ ) 

#does the same thing, but will ignore the ".bak" string in sed.
diff -y <(ls -x1 ./$1/ | sed s/.bak//g) <(ls -x1 ./$2/ | sed s/.bak//g) 
