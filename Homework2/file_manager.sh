#!/bin/bash

# Скрипт для управления файлом report.txt
# Проверяет существование файла и либо удаляет, либо создаёт его

FILENAME="report.txt"

if [ -f "$FILENAME" ]; then
    echo "File exists, removing..."
    rm "$FILENAME"
else
    # Если файл не существует
    echo "File not found, creating..."
    touch "$FILENAME"
fi

ls -l "$FILENAME" 2>/dev/null || echo "File $FILENAME does not exist"

