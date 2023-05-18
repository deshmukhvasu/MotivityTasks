#!/bin/bash

# Define variables
BACKUP_DIR="/var/backups"
BACKUP_PATHS="/etc /home /opt /var"
BACKUP_FILENAME="$(date +%Y-%m-%d_%H-%M-%S)_backup.tar.gz"
BACKUP_COUNT="5"

# Define functions
create_backup() {
    tar -czf "$BACKUP_DIR/$BACKUP_FILENAME" $BACKUP_PATHS
}

check_backup_dir() {
     if [ ! -d "$BACKUP_DIR" ]; then
     mkdir -p "$BACKUP_DIR"
     fi
}
check_backup_status() {
    if [ $? -eq 0 ]; then
    echo "Backup created successfully."
    else
    echo "Backup failed."
    exit 1
     fi
     }

remove_old_backups() {
    cd "$BACKUP_DIR"
    backup_files=($(ls -t))
    num_backups=${#backup_files[@]}
    if [ $num_backups -gt $BACKUP_COUNT ]; then
    num_to_delete=$((num_backups - BACKUP_COUNT))
    for (( i=0; i<num_to_delete; i++ )); do
    rm "${backup_files[$i]}"
    done
    fi
    }


# Check if backup directory exists and create it if it doesn't
check_backup_dir
# Create backup archive
create_backup
# Check backup status
check_backup_status
# Remove old backups
remove_old_backups
# Exit script with success status
exit 0


