#!/bin/bash
# ---------------------------------------------------------
# Script Name: backup.sh
# Purpose    : Backup a directory with timestamp
# Author     : Surya Rao
# Date       : 19-11-2025
# ---------------------------------------------------------

# Ask user for directory to back up
echo "Enter the directory you want to back up:"
read SOURCE_DIR

# Backup folder
BACKUP_DIR="$HOME/backups"

# Create backup folder if not exists
mkdir -p "$BACKUP_DIR"

# Timestamp
TIME=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
DEST="$BACKUP_DIR/backup_$TIME.tar.gz"

# Create backup
tar -czf "$DEST" "$SOURCE_DIR"

echo "Backup created successfully at: $DEST"





#!/bin/bash
# ---------------------------------------------------------
# Script Name: monitor.sh
# Purpose    : Log CPU and Memory usage every 5 seconds
# Author     : Surya Rao
# Date       : 19-11-2025
# ---------------------------------------------------------

LOG_FILE="$HOME/system_usage.log"

echo "Logging CPU and Memory usage. Press CTRL+C to stop."
echo "----------------------------------------------"

while true
do
    echo "----- $(date) -----" >> "$LOG_FILE"
    
    # CPU usage
    top -bn1 | grep "Cpu(s)" >> "$LOG_FILE"
    
    # Memory usage
    free -h >> "$LOG_FILE"

    echo "----------------------------------------------" >> "$LOG_FILE"

    sleep 5  # logs every 5 seconds
done






#!/bin/bash
# ---------------------------------------------------------
# Script Name: download.sh
# Purpose    : Download a file using wget and store it in Downloads folder
# Author     : Surya Rao
# Date       : 19-11-2025
# ---------------------------------------------------------

# Ask user for URL
echo "Enter the URL of the file to download:"
read URL

# Download location
DEST="$HOME/Downloads"

# Create folder if not exists
mkdir -p "$DEST"

# Download using wget
wget -P "$DEST" "$URL"

echo "File downloaded successfully to $DEST"





chmod +x backup.sh
chmod +x monitor.sh
chmod +x download.sh
