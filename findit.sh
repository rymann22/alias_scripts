#!/bin/bash

#search string in current directory
find ./* -iname '*'$1'*'

#if you want to ignore all "permission denied" or "operation not permitted" lines
find ./* -iname '*'$1'*' -print 2>/dev/null
