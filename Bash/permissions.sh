#!/bin/bash

# Permission Checker Script
# Demonstrates:
# - User Input
# - File Validation
# - Permission Checks
# - File Metadata
# - Exit Codes

read -p "Enter file path: " filename

echo

if [[ ! -e "$filename" ]]; then
    echo "Error: '$filename' does not exist."
    exit 1
fi

echo "File found: $filename"
echo

echo "Permission Checks"

if [[ -r "$filename" ]]; then
    echo "✓ Readable"
else
    echo "✗ Not Readable"
fi

if [[ -w "$filename" ]]; then
    echo "✓ Writable"
else
    echo "✗ Not Writable"
fi

if [[ -x "$filename" ]]; then
    echo "✓ Executable"
else
    echo "✗ Not Executable"
fi

echo
echo "File Information"
echo "--------------------------------"

ls -lh "$filename"

echo
echo "Owner Information"
echo "--------------------------------"

stat -c "Owner: %U" "$filename"
stat -c "Group: %G" "$filename"
stat -c "Size : %s bytes" "$filename"

echo
echo "Permission check completed successfully."

exit 0
