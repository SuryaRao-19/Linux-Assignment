#!/bin/bash
# ---------------------------------------------------------
# Script Name: monitor.sh
# Purpose    : Log CPU and Memory usage every 5 seconds
# Author     : Surya Rao
# Date       : 19-11-2025
# ---------------------------------------------------------

LOG_FILE="$HOME/system_usage.log"

echo "System monitoring started. Press CTRL+C to stop."

while true
do
    {
        echo "----- $(date) -----"
        top -bn1 | grep "Cpu(s)"
        free -h
        echo "-------------------"
    } >> "$LOG_FILE"
    
    sleep 5
done
