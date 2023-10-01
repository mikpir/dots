#!/usr/bin/env bash

# Upgrade everything
sudo dnf up -y

### Flatpaks ###

# sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# sudo flatpak install -y com.slack.Slack com.bitwarden.desktop com.discordapp.Discord com.spotify.Client io.dbeaver.DBeaverCommunity us.zoom.Zoom

mkdir -p ~/.local/bin
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -o ~/.local/bin/z.sh

# sudo dnf install -y speedtest-cli pandoc

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# apps
sudo dnf in -y \
brightnessctl hwinfo neofetch \
fzf \
neovim kitty \
python3 \

