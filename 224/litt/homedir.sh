#!/bin/bash
HOMEDIR=$(getent passwd "\$1" | cut -d: -f6)
if [ -z "$HOMEDIR" ]; then
    echo "Ошибка: пользователь не найден."
else
    echo "Домашняя директория: $HOMEDIR"
fi
