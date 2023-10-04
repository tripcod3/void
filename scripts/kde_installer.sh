#!/bin/bash

# Introduction
echo "Thank you for using Gosh-Its-Arch Void, KDE Desktop Installer"

# Countdown before starting
echo "Installation will start in:"
for i in {5..1}
do
    echo "$i..."
    sleep 1
done

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# Step 1: Install GNOME, GNOME apps, and Xorg
xbps-install kde5 -y


# Step 2: Create symbolic links for services
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/sddm /var/service

echo "KDE will automatically start shortly, enjoy!"
