#!/bin/bash

sum=0
count=0
re='^-?[0-9]+([.][0-9]+)?$'

for arg in "$@"; do
    if [[ $arg =~ $re ]]; then
        sum=$(echo "$sum + $arg" |bc)
        count=$((count + 1))
    else
        echo "Игнорируем некорректное значение: $arg"
    fi
done

if [ $count -eq 0]; then
    echo "Ошибка: не передано ни одно число."
    exit 1
fi

avg=$(echo "scale=2; $sum / $count" |bc)
echo "Среднее значение: $avg"
