#!/bin/sh

# Update the list of packages
apt-get update -y

# Install pre-requisite packages.
apt-get install -y wget apt-transport-https software-properties-common

# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
dpkg -i packages-microsoft-prod.deb

# Update the list of products
apt-get update

# Enable the "universe" repositories
add-apt-repository universe

# Install PowerShell
apt-get install -y powershell
