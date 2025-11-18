
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
