#!/bin/bash
echo "User hiện tại: $USER $(hostname)" 
echo "Thư mục hiện tại: $(pwd)"
echo "Thư mục home: $HOME" 

DISK=$(df -h / | tail -1 | awk '{print $5}')
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
RAM=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
echo "Disk usage: $DISK"
echo "CPU usage: $CPU%"
echo "RAM usage: $RAM"
