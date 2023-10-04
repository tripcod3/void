#!/bin/bash

# Introduction
echo "Thank you for using Gosh-Its-Arch Void, Gnome Desktop Installer"

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
xbps-install -S gnome gnome-apps xorg -y

# Step 2: Install Pulseaudio
xbps-install -S pulseaudio -y

# Step 3: Create symbolic link for pipewire.desktop
ln -s /usr/share/applications/pipewire.desktop /etc/xdg/autostart/

# Step 4: Create symbolic links for services
ln -s /etc/sv/gdm /var/service
ln -s /etc/sv/NetworkManager /var/service
ln -s /etc/sv/dbus /var/service

echo "Gnome will automatically start shortly, enjoy!"
