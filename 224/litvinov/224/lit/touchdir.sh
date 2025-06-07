#!/bin/bash

dir="$1"

if [ -z "$dir" ]; then
    echo "Ошибка: не указана директория."
    exit 1
fi

if [ -d "$dir" ]; then
    echo "Директория '$dir' уже существует."
else
    mkdir -p "$dir"
    if [ $? -eq 0 ]; then
        echo "Директория '$dir' успешно создана."
    else
        echo "Ошибка: невозможно создать директорию '$dir'. Проверьте права доступа."
        exit 1
    fi
fi
