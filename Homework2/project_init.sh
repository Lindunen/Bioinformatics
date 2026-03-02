#!/bin/bash

# Скрипт для инициализации структуры проекта
# Использование: ./project_init.sh <название_проекта>

# Проверяем, передан ли аргумент
if [ $# -eq 0 ]; then
    echo "No project name provided"
    exit 1
fi

# Сохраняем имя проекта в переменную
PROJECT_NAME=$1

# Создаем папку проекта
echo "Creating project structure for: $PROJECT_NAME"
mkdir -p "$PROJECT_NAME"

# Переходим в папку проекта
cd "$PROJECT_NAME"

# Создаем подпапки
mkdir -p data scripts results

# Создаем и настраиваем raw_data.txt
touch data/raw_data.txt
chmod 600 data/raw_data.txt
echo "Created data/raw_data.txt with permissions 600 (read/write for owner only)"

# Создаем и настраиваем run_analysis.sh с Shebang и echo с $1
cat > scripts/run_analysis.sh << EOF
#!/bin/bash
echo "Hello from \$1"
EOF

# Делаем скрипт исполняемым
chmod +x scripts/run_analysis.sh
echo "Created scripts/run_analysis.sh with execute permissions"

# Возвращаемся в исходную папку
cd ..

echo "Project $PROJECT_NAME initialized successfully!"
echo "Structure:"
ls -la "$PROJECT_NAME"
