#!/bin/bash
LOG_DIR="/var/log/myapp"
ARCHIVE_DIR="$LOG_DIR/archive"
RETENTION_DAYS=30

mkdir -p $ARCHIVE_DIR

find $LOG_DIR -type f -name "*.log" | while read LOG_FILE; do
    mv $LOG_FILE $ARCHIVE_DIR/$(basename $LOG_FILE).$(date +"%Y%m%d")
    gzip $ARCHIVE_DIR/$(basename $LOG_FILE).$(date +"%Y%m%d")
done

find $ARCHIVE_DIR -type f -name "*.gz" -mtime +$RETENTION_DAYS -exec rm {} \;
