#!/bin/bash
LOG_FILE="/var/log/system_monitor.log"
THRESHOLD=80

while true; do
    CPU_USAGE=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    DISK_USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//')

    echo "CPU Usage: $CPU_USAGE%" >> $LOG_FILE
    echo "Disk Usage: $DISK_USAGE%" >> $LOG_FILE

    if [ $CPU_USAGE -gt $THRESHOLD ]; then
        echo "Warning: CPU usage is above $THRESHOLD%!" >> $LOG_FILE
    fi

    if [ $DISK_USAGE -gt $THRESHOLD ]; then
        echo "Warning: Disk usage is above $THRESHOLD%!" >> $LOG_FILE
    fi

    sleep 60
done
