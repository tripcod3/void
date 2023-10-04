#!/bin/bash

# Intro message
echo "Thank you for using Gosh-Its-Arch Void Linux Updater"

# Ensure script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Run the xbps-install command
xbps-install -Su

# Message after the update
echo "System fully updated"
