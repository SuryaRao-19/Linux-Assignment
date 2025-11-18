
#!/bin/bash
# Script Name: backup.sh
# Author: Surya Rao
# Date: 2025-11-18
# Purpose: Backup a directory into backup folder with timestamp.

SOURCE="/home/surya/Documents"
DEST="/home/surya/backup_$(date +%Y%m%d_%H%M%S)"

mkdir -p "$DEST"
cp -r "$SOURCE" "$DEST"

echo "Backup completed successfully!"




#!/bin/bash
# Script Name: monitor.sh
# Author: Surya Rao
# Date: 2025-11-18
# Purpose: Log CPU and Memory usage to a file.

LOGFILE="/home/surya/system_log.txt"

echo "Logging CPU and Memory usage..." >> $LOGFILE
echo "Time: $(date)" >> $LOGFILE
top -b -n1 | head -5 >> $LOGFILE
echo "---------------------------------" >> $LOGFILE




#!/bin/bash
# Script Name: download.sh
# Author: Surya Rao
# Date: 2025-11-18
# Purpose: Download a file using wget.

URL="https://example.com/samplefile.txt"
DEST="/home/surya/Downloads"

wget -P "$DEST" "$URL"

echo "Download completed!"





# Linux Shell Assignment

This repository contains my Linux automation scripts created as part 
of Assignment 02 for the course ETCCCP105.

## Scripts Included
1. backup.sh – Backs up a directory with timestamp.
2. monitor.sh – Logs CPU & memory usage.
3. download.sh – Downloads a file from the internet.

## How to Run
chmod +x scriptname.sh
./scriptname.sh

## Evidence
Screenshots folder contains:
- Command outputs
- Script execution proofs
- Ubuntu installation steps
