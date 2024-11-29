#!/bin/bash

# List of remote servers
servers=("192.168.31.143" "192.168.31.30")

# Log file path
log_file="/var/log/vm-user-activity.log"

# SSH credentials
user=root   # Replace with your SSH username
password=Srw1819@20   # Replace with your SSH password, if needed

# Loop through servers
for server in "${servers[@]}"; do
    echo "Connecting to $server..."
    ssh "$user@$server" "cat $log_file"
    echo "--------------------------------------------------"
done
