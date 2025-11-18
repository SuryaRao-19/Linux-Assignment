
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
