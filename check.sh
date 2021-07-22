#!/bin/bash

check=""
expected=""

for i in {1..7} 
do
    check=$(cat "$i.in" | python basicprogramming1.py)
    expected=$(cat "$i.ans")
    if [ $check == $expected ]; then
        echo $i": PASS"
    else
        echo $i": FAILED"
    fi
done
