#!/bin/bash
backup="/home/riven/Desktop"
dest="home/riven"
day=$(date +%A)
hostname=$(hostname -s)
archive="$hostname -$day.tgz"
tar czf $dest/$archive $backup
echo "Backup Complete"
