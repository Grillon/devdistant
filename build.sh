#!/usr/bin/env sh

if [ $# -ne 2 ];then 
  echo "$0 arg1 arg2

arg 1 : nom image 
arg 2 : nom tag
"
exit 1
fi
docker build -t="$1:$2" .
