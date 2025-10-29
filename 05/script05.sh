#!/bin/bash

top10_files_type() {
    i=1
    find "$path" -type f -exec du -h {} \; 2>/dev/null | sort -hr | head -n 10 | awk '{print $2}' | while read -r file; do 
    size=$(du -h "$file" | awk '{print $1}')
    type=$(basename "$file" | awk -F'.' 'NF>1 {print $NF}')
    echo "$i - $file, $size, $type"
    ((i++))
    done
}

top10_files_xash() {
    i=1
    find "$path" -type f -exec du -h {} \; 2>/dev/null | sort -hr | head -n 10 | awk '{print $2}' | while read -r file; do 
    size=$(du -h "$file" | awk '{print $1}')
    md5=$(md5sum "$file" | awk '{print $1}')
    echo "$i - $file, $size, $md5"
    ((i++))
    done
}

NUMBER_OF_FOLDERS=$(find "$path" -type d 2>/dev/null | wc -l)   
TOP_5_FOLDERS=$(du -h "$path" 2>/dev/null | sort -hr | head -n 5 | awk '{print NR " - " $2 ", " $1}')
NUMBER_OF_FILES=$(find "$path" -type f 2>/dev/null | wc -l)
NUMBER_OF_FILES_CONF=$(find "$path" -name "*.conf" 2>/dev/null | wc -l)
NUMBER_TEXT_FILES=$(find "$path" -type f \( -name "*.txt" -o -name "*.md" -o -name "*.log" \) 2>/dev/null | wc -l)
NUMBER_EXECUTABLE_FILES=$(find "$path" -type f -executable 2>/dev/null | wc -l)
NUMBER_LOGS_FILES=$(find "$path" -name "*.log" 2>/dev/null | wc -l)
ARCHIVE_FILES=$(find "$path" -type f \( -name  "*.zip" -o -name "*.rar" -o -name "*.tar" \) 2>/dev/null | wc -l)
SYMBOLIC_LINKS=$(find "$path" -type l 2>/dev/null | wc -l)
i=1
TOP_10_FILES_TYPE=$(find "$path" -type f -exec du -h {} \; 2>/dev/null | sort -hr | head -n 10 | awk '{print $2}' | while read -r file; do 
size=$(du -h "$file" | awk '{print $1}')
type=$(basename "$file" | awk -F'.' 'NF>1 {print $NF}')
echo "$i - $file, $size, $type"
((i++))
done)
TOP_10_FILES_XASH=$(find "$path" -type f -exec du -h {} \; 2>/dev/null | sort -hr | head -n 10 | awk '{print $2}' | while read -r file; do 
size=$(du -h "$file" | awk '{print $1}')
md5=$(md5sum "$file" | awk '{print $1}')
echo "$i - $file, $size, $md5"
((i++))
done)
END_TIME=$(date +%s)
SCRIPT_EXECUTION_TIME=$((END_TIME - START_TIME))
