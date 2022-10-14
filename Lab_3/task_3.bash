#!/bin/bash
file=example.txt
index=1
echo $(head -n $(($1 +$2)) $file | tail -n $2 )



