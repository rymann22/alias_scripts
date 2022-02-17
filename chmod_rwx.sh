#!/bin/bash

#chmod variables
none="0"
x="1"
w="2"
wx="3"
r="4"
rx="5"
rw="6"
rwx="7"

eval "echo \${$1}\${$2}\${$3}"
