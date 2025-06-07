#!/bin/bash

user="$1"

if [ -z "$user" ]; then
    echo "Ошибка: не указан пользователь."
    exit 1
fi

home_dir=$(grep "^$user:" /etc/passwd | cut -d: -f6)

if [ -z "$home_dir" ]; then
    echo "Ошибка: пользователь '$user' не найден."
    exit 1
else
    echo "$home_dir"
fi
