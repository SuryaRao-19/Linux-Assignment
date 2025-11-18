✅ STEP 1: Create each file
Create backup script:
nano backup.sh


Paste this:

#!/bin/bash
# ---------------------------------------------------------
# Script Name: backup.sh
# Purpose    : Backup a directory with timestamp
# Author     : Surya Rao
# Date       : 19-11-2025
# ---------------------------------------------------------

echo "Enter the directory you want to back up:"
read SOURCE_DIR

# Check if directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

BACKUP_DIR="$HOME/backups"
mkdir -p "$BACKUP_DIR"

TIME=$(date +"%Y-%m-%d_%H-%M-%S")
DEST="$BACKUP_DIR/backup_$TIME.tar.gz"

tar -czf "$DEST" "$SOURCE_DIR"

echo "Backup created successfully: $DEST"


Save:
CTRL + O → ENTER → CTRL + X

✅ STEP 2: CPU & Memory Monitoring Script
nano monitor.sh


Paste:

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


Save:
CTRL + O → ENTER → CTRL + X

✅ STEP 3: Download Script (Fully Fixed)
nano download.sh


Paste:

#!/bin/bash
# ---------------------------------------------------------
# Script Name: download.sh
# Purpose    : Download a file using wget
# Author     : Surya Rao
# Date       : 19-11-2025
# ---------------------------------------------------------

echo "Enter the URL to download:"
read URL

# Validate URL
if [[ -z "$URL" ]]; then
    echo "Error: URL cannot be empty!"
    exit 1
fi

DEST="$HOME/Downloads"
mkdir -p "$DEST"

wget -P "$DEST" "$URL"

echo "Download completed! File saved in: $DEST"


Save:
CTRL + O → ENTER → CTRL + X

✅ STEP 4: Give permissions
chmod +x backup.sh monitor.sh download.sh

✅ STEP 5: Run scripts
./backup.sh
./monitor.sh
./download.sh
