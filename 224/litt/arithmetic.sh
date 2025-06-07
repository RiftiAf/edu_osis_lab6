#!/bin/bash
if [ "\$3" == "+" ]; then
    echo $((\$1 + \$2))
elif [ "\$3" == "-" ]; then
    echo $((\$1 - \$2))
elif [ "\$3" == "*" ]; then
    echo $((\$1 * \$2))
elif [ "\$3" == "/" ]; then
    if [ "\$2" -eq 0 ]; then
        echo "Ошибка: деление на ноль."
    else
        echo $((\$1 / \$2))
    fi
else
    echo "Неизвестная операция."
fi
