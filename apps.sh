#!/usr/bin/env bash

# Upgrade everything
sudo dnf up -y

# Vscode repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update

# nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

### Flatpaks ###

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y com.slack.Slack com.bitwarden.desktop

sudo dnf install -y speedtest-cli pandoc

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# apps
sudo dnf in -y \
brightnessctl speedtest-cli hwinfo neofetch \
wl-clipboard fzf z \
neovim kitty starship \
python3 \
code