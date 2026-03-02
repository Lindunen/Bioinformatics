#!/bin/bash

# Скрипт для создания папки fastqs и 10 fastq файлов
# Создает файлы от sample_1.fastq до sample_10.fastq

mkdir -p fastqs

cd fastqs

for i in {1..10}
do
    filename="sample_${i}.fastq"
    echo "This is sample number $i" > "$filename"
done

cd ..

ls -la fastqs/
