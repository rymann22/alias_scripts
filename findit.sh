#!/bin/bash

#search string in current directory
find ./* -iname '*'$1'*' 2>/dev/null
