#!/bin/bash
file="example.txt"
index=1
k=$1
n=$(($2+$k-1))
while read line; do
    if [ $index -ge $k ] && [ $n -ge $index ] ; then 
        echo $line
    fi
    index=$(( $index + 1 ))
done < $file



