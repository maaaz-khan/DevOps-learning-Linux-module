#!/bin/bash

# File Creation and Permission Checker
# Demonstrates:
# - Directory creation
# - File creation
# - Writing to files
# - Reading files
# - Permission checks

mkdir -p bash_demo

cd bash_demo || exit 1

echo "This file was created by a Bash script on $(date)." > demo.txt

echo "File created successfully."
echo

echo "File contents:"
cat demo.txt

echo
echo "Checking permissions..."

if [[ -r demo.txt ]]; then
    echo "demo.txt is readable."
fi

if [[ -w demo.txt ]]; then
    echo "demo.txt is writable."
fi

if [[ -x demo.txt ]]; then
    echo "demo.txt is executable."
else
    echo "demo.txt is not executable."
fi

echo
echo "Current permissions:"
ls -l demo.txt
