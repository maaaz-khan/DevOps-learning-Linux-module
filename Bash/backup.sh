#!/bin/bash

# Backup Script
# Creates a timestamped backup directory
# Copies all .txt files from a source directory
# Displays the number of files backed up

read -p "Enter source directory: " src_dir

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_dir="backup_$timestamp"

# Verify source directory exists

if [[ ! -d "$src_dir" ]]; then
    echo "Error: Directory '$src_dir' does not exist."
    exit 1
fi

# Find all txt files

txt_files=("$src_dir"/*.txt)

# Check if any txt files exist

if [[ ! -e "${txt_files[0]}" ]]; then
    echo "No .txt files found in '$src_dir'."
    exit 1
fi

# Create backup directory

mkdir -p "$backup_dir"

# Count files before copy

file_count=${#txt_files[@]}

echo "Found $file_count .txt file(s)."
echo "Creating backup directory: $backup_dir"

# Copy files

cp "$src_dir"/*.txt "$backup_dir"/

if [[ $? -eq 0 ]]; then
    echo "Backup completed successfully."
    echo "Files backed up: $file_count"
else
    echo "Backup failed."
    exit 1
fi
