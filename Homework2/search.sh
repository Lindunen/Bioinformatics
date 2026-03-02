#!/bin/bash

# Скрипт для поиска файла super_secret_key.txt

if [ -f "super_secret_key.txt" ]; then
    echo "Found it!" > found.log
else
    echo "I did my best"
    # Ошибка уходит в /dev/null (например, попытка прочитать несуществующий файл)
    cat super_secret_key.txt 2>/dev/null
fi
