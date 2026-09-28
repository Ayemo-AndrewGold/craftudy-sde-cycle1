#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: ./archive.sh <folder_name>"
  exit 1
fi
FOLDER=$1
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="${FOLDER}_${TIMESTAMP}.tar.gz"
if [ ! -d "$FOLDER" ]; then
  echo "Error: Folder $FOLDER not found"
  exit 1
fi
tar -czf "$ARCHIVE_NAME" "$FOLDER"
echo "Archived to $ARCHIVE_NAME"
