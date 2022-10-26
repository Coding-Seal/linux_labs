#!/bin/bash

name=$1
# res=$(find $name 2>&1 1>/dev/null)
# if [[ $res = "" ]]; then
#     echo "File $name exists"
# else
#     echo "File $name not found"
# fi

if [[ -e $name ]]; then
    echo "File $name exists"
else
    echo "File $name not found"
fi