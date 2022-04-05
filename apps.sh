#!/usr/bin/env bash

# Check for Homebrew,
./brew.sh

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# No "This app was downloaded from the internet"
HOMEBREW_CASK_OPTS="--no-quarantine"
#########################################################################
# GNU utils
#########################################################################
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed

# Install Bash 4.
brew install bash
brew install bash-completion@2

# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c "echo $(brew --prefix)/bin/bash >> /etc/shells"
# Change to the new shell, prompts for password
# chsh -s "$(brew --prefix)/bin/bash"

brew install z

# install z
grep -qxF ". $(brew --prefix)/etc/profile.d/z.sh" ~/.bashrc || 
  echo ". $(brew --prefix)/etc/profile.d/z.sh" >> ~/.bashrc

# Install `wget` with IRI support.
brew install wget

brew install ack

#########################################################################
# Development tools
#########################################################################

brew install git
brew install vim

brew tap homebrew/cask-fonts
brew install --cask font-sauce-code-pro-nerd-font
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-caskaydia-cove-nerd-font

brew install --cask visual-studio-code

brew install --cask iterm2
brew install starship

# brew install homebrew/dupes/screen

# TODO: Install Docker

#########################################################################
# Misc
#########################################################################

brew install speedtest_cli
brew install pandoc

brew install --cask  alfred
brew install --cask  macdown

brew install --cask  google-chrome
brew install --cask  slack
brew install --cask  bitwarden

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
# brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo
