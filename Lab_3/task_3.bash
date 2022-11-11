#!/bin/bash
file=example.txt
start=$1
quant=$2

head -n $(($start+$quant)) $file | tail -n $quant



