#!/bin/bash

#create file with hostnames

for i in $(cat $1)
do
  ssh -o ConnectTimeout=3 -q $i
done
