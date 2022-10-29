#!/usr/bin/env bash

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo dnf upgrade -y

# Languages
sudo dnf -y install python3 python3-pip

# qtile
pip install --no-cache-dir cairocffi
pip install qtile
#########################################################################
# Development
#########################################################################

sudo dnf install -y nvim kitty starship

# Vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code

# Utils
sudo dnf install -y wl-clipboard fzf z

#########################################################################
# Flatpaks
#########################################################################

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y com.slack.Slack com.bitwarden.desktop

sudo dnf install -y speedtest-cli pandoc

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

