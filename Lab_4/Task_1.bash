#!/bin/bash

res=$1
flg=True 
scale=5
shift 1
while [[ $# -gt 0 && $flg = True ]]; do
# $# number of args left
    case $1 in
        "+"|"-") res=`echo "scale=$scale;$res $1 $2" | bc`;;
        "x"|"X") res=`echo "scale=$scale;$res * $2" | bc`;;

        "/") 
            if [ $2 -eq 0 ]; then
                echo "Zero division error"
                flg=False
                break
                fi 
            res=`echo "scale=$scale;$res $1 $2" | bc`;;

        *) echo "Bad symbol $1"
            flg=False;;

        esac

        shift 2
done

if [ $flg = True ]; then
    echo $res
    fi



