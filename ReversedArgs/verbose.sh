#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No Arguments provided. Aborting..."
    exit 0
fi

count=$#

echo "Arguments provided ($count): "
for((i=0; i < $count; i++)); do
    args[$i]="$1"
    echo -n "${args[$i]} "
    shift
done

echo $'\nArguments in reversed order:'
for((i=$(($count-1)); i >= 0; --i)); do
    echo -n "${args[$i]} "
done

echo