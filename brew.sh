#!/usr/bin/env bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

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
sudo bash -c "echo $(brew --prefix bash) >> /etc/shells"
# Change to the new shell, prompts for password
chsh -s $(brew --prefix bash)

# Install `wget` with IRI support.
brew install wget --with-iri

brew install homebrew/dupes/grep
brew install ack
brew install homebrew/dupes/openssh

#########################################################################
# Development tools
#########################################################################

brew install git
brew install vim --override-system-vi

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
