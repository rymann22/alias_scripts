#!/bin/bash

#shows all linked files or directories in current directory
find ./* -maxdepth 0 -type l -ls

#shows all linked files or directories in current directory, and will show any links in subdirectory as well, but will not go any further
find ./* -maxdepth 1 -type l -ls
