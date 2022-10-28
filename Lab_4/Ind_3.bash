#!/bin/bash

N=$1
i=$N 
for ((i = $N ; i > 0 ; i--));
do
    res=""
    for ((j = 0 ; j < $(($N -$i)); j++));
    do
        res="${res} "
    done
    for ((j = 0 ; j < i-1; j++));
    do
        res="${res}* "
    done
    echo "$res*"
done



