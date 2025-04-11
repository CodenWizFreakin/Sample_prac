#!/bin/bash

# Script to backup a directory

# Prompt the user for the source and destination
echo "Enter the source directory:"
read source_dir

echo "Enter the backup destination directory:"
read dest_dir

# Create backup filename with date and time
backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Create the backup using tar
tar -czf "$dest_dir/$backup_name" "$source_dir"

# Confirm completion
echo "Backup of $source_dir completed successfully."
echo "File saved as $dest_dir/$backup_name"
