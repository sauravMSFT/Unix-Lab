#!/bin/bash

for i in `seq 1 $#` do 
    res="$1 $res"
    shift
done

echo $res