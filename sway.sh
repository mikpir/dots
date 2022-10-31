#!/usr/bin/env bash

sudo dnf in -y sway
sudo dnf copr enable -y eddsalkield/swaylock-effects
sudo dnf rm -y swaylock
sudo dnf in -y swaylock-effects fuzzel i3status
