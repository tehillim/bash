#!/bin/bash

# Remount the root filesystem as read-write
mount -o remount,rw /

# Mask serial-getty services to disable them
systemctl mask serial-getty@ttyAMA0.service
systemctl mask serial-getty@serial0.service
systemctl mask serial-getty@serial1.service

# Print a message indicating completion
echo "Services masked successfully."