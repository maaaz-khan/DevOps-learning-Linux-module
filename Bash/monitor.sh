#!/bin/bash

# System Monitor Script
# Demonstrates:
# - System Monitoring
# - Logging
# - Process Inspection
# - Text Processing
# - Automation

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
log_file="system_monitor_$timestamp.log"

{
echo "========================================"
echo "SYSTEM MONITOR REPORT"
echo "Generated: $timestamp"
echo "Hostname: $(hostname)"
echo "========================================"

echo
echo "System Uptime:"
uptime -p

echo
echo "CPU Usage:"
top -bn2 -d 0.01 | grep "Cpu(s)" | tail -1 | awk '{print "Usage: " 100 - $8 "%"}'

echo
echo "Memory Usage:"
free -h | awk '/^Mem:/ {
print "Total: " $2
print "Used : " $3
print "Free : " $4
}'

echo
echo "Disk Usage (/):"
df -h / | awk 'NR==2 {
print "Total: " $2
print "Used : " $3
print "Free : " $4
print "Usage: " $5
}'

echo
echo "Top 5 Processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6

echo
echo "Top 5 Processes by CPU Usage:"
ps aux --sort=-%cpu | head -n 6

echo
echo "========================================"
echo "Monitoring Complete"
echo "========================================"

} > "$log_file"

echo "Log created successfully:"
echo "$log_file"

echo
echo "Preview:"
echo "----------------------------------------"

cat "$log_file"
