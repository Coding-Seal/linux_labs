#!/bin/bash

res=$1
flg=True 
scale=5
shift 1
while [[ $# -gt 0 && $flg = True ]]; do
# $# number of args left
    if [[  $# -lt 2 ]]; then 
        echo "Nehorosho tak delat!"
        flg=False
        break
    fi
    if ! [[ $res =~ [+-]?[0-9]+([.][0-9]+)? ]]; then
        echo "Nehorosho tak delat!"
        flg=False
        break
    fi
    if ! [[ $2 =~ [+-]?[0-9]+([.][0-9]+)? ]]; then
        echo "Nehorosho tak delat!"
        flg=False
        break
    fi

    case $1 in
        "+"|"-") res=`echo "scale=$scale;$res $1 $2" | bc`;;
        "x"|"X") res=`echo "scale=$scale;$res * $2" | bc`;;

        "/") 
            if [ `echo "$2==0" | bc` -eq 1 ]; then
                echo "Error"
                flg=False
                break
                fi 
            res=`echo "scale=$scale;$res $1 $2" | bc`;;

        *) echo "Bad symbol"
            flg=False;;

        esac

        shift 2
done

if [ $flg = True ]; then
    echo $res
    fi



