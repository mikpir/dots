#!/usr/bin/env bash

# Step 1: Update the OS and Install Xcode Tools
echo "------------------------------"
echo "Updating OSX.  If this requires a restart, run the script again."
# Install all available updates
sudo softwareupdate -ia --verbose
# Rosetta might be needed for docker
# sudo softwareupdate --install-rosetta

echo "------------------------------"
echo "Installing Xcode Command Line Tools."
# Install Xcode command line tools
xcode-select --install
