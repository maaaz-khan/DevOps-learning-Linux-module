# Bash Scripting for DevOps

## Overview

Bash is a command-line shell and scripting language used extensively in Linux environments. It is commonly used for automation, system administration, monitoring, deployment workflows, and troubleshooting.

---

# Script Fundamentals

## Shebang

```bash
#!/bin/bash
```

Specifies which interpreter should execute the script.

---

## Variables

```bash
name="Maaz"

echo "$name"
```

---

## User Input

```bash
read username
```

---

## Comments

```bash
# Single line comment
```

---

# Conditional Logic

## If Statements

```bash
if [ "$user" = "admin" ]; then
    echo "Access granted"
fi
```

### Common Test Operators

```text
-f File exists
-d Directory exists
-r Readable
-w Writable
-x Executable
-z Empty string
-n Non-empty string
```

---

# Loops

## For Loop

```bash
for file in *.txt
do
    echo "$file"
done
```

## While Loop

```bash
while true
do
    echo "Running..."
done
```

---

# Arithmetic Expansion

```bash
count=$((count + 1))
```

Generate random values:

```bash
number=$((RANDOM % 100))
```

---

# Functions

```bash
greet() {
    echo "Hello $1"
}

greet Maaz
```

Functions improve reusability and readability.

---

# Exit Codes

```bash
exit 0
```

Success.

```bash
exit 1
```

Failure.

Checking exit codes:

```bash
echo $?
```

---

# Input Validation

Numeric validation:

```bash
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Invalid age"
    exit 1
fi
```

---

# File Operations

Create:

```bash
touch file.txt
```

Copy:

```bash
cp file.txt backup/
```

Move:

```bash
mv file.txt archive/
```

Delete:

```bash
rm file.txt
```

---

# File Permissions

View permissions:

```bash
ls -l
```

Change permissions:

```bash
chmod 755 script.sh
```

### Common Permission Values

```text
755 = Owner full access
644 = Read-only for others
700 = Private owner access
770 = Owner and group access
```

---

# Searching Files

Search content:

```bash
grep "error" logs.txt
```

Find matching files:

```bash
grep -l "Victory" *.txt
```

---

# Sorting and Processing Data

Count lines:

```bash
wc -l file.txt
```

Sort data:

```bash
sort file.txt
```

Unique values:

```bash
sort file.txt | uniq
```

---

# Text Processing

## Sed

Replace text:

```bash
sed 's/Linux/DevOps/' file.txt
```

## Awk

Print first column:

```bash
awk '{print $1}' file.txt
```

---

# Process Management

View running processes:

```bash
ps aux
```

Find process:

```bash
ps aux | grep nginx
```

Terminate process:

```bash
kill PID
```

Force terminate:

```bash
kill -9 PID
```

---

# Monitoring

Monitor directory changes:

```bash
inotifywait -m monitored_directory
```

Monitor system resources:

```bash
top
```

Modern alternative:

```bash
htop
```

---

# Networking

Check connectivity:

```bash
ping google.com
```

DNS lookups:

```bash
dig google.com
```

or

```bash
nslookup google.com
```

SSH connection:

```bash
ssh user@server
```

---

# Bash and Git

Check repository status:

```bash
git status
```

Stage changes:

```bash
git add .
```

Commit:

```bash
git commit -m "message"
```

Push:

```bash
git push
```

---

# Automation Example

```bash
#!/bin/bash

backup_dir="backup"

mkdir -p "$backup_dir"

cp *.txt "$backup_dir"

echo "Backup complete"
```

---

# Key Lessons Learned

- Linux is heavily automation-driven.
- Bash allows repetitive tasks to be automated.
- Input validation improves reliability.
- Exit codes communicate success and failure.
- Permissions are critical for security.
- Text-processing tools such as grep, sed, and awk are extremely powerful.
- Bash integrates naturally with Git, SSH, networking, and system administration.

---

# DevOps-Relevant Tools Practised

- Bash
- Linux
- Git
- GitHub
- SSH
- grep
- sed
- awk
- chmod
- inotifywait
- dig
- nslookup
- process management

---

# Future Topics

- Arrays
- Case Statements
- Cron Jobs
- Log Rotation
- Systemd Services
- API Calls with curl
- JSON Processing with jq
- Docker Automation
- CI/CD Scripting
