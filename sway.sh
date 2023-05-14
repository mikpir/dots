#!/usr/bin/env bash

sudo dnf in -y sway

sudo dnf copr enable -y eddsalkield/swaylock-effects
sudo dnf rm -y swaylock
sudo dnf in -y swaylock-effects

sudo dnf in -y mako rofi

sudo dnf in -y waybar playerctl

