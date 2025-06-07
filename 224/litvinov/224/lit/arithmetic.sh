#!/bin/bash

num1=$1
num2=$2
op=$3

re='^-?[0-9]+([.][0-9]+)?$'
if ! [[ $num1 =~ $re ]]; then
    echo "Ошибка: первый агргумент не число."
    exit 1
fi

if ! [[ $num2 =~ $re ]]; then
    echo "Ошибка: второй агрумент не число."
    exit 1
fi

case "$op" in
    +) result=$(echo "$num1 + $num2" | bc);;
    -) result=$(echo "$num1 - $num2" | bc);;
    \*) result=$(echo "$num1 * $num2" | bc);;
    /)

        if (( $(echo "$num2 == 0" | bc -l) )); then
            echo "Ошибка: деление на ноль."
            exit 1
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc);;
    *)
        echo "Неизвестная операция"
        exit 1;;
esac

echo "$result"
