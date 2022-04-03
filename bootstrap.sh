#!/usr/bin/env bash

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" \
        --exclude "README.md" --exclude "LICENSE" --exclude "setup" -avh --no-perms . ~;
    source ~/.bash_profile;

    if [ -d  /opt/homebrew ]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/pirhonen/.bash_profile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
}

doIt;

# if [ "$1" == "--force" -o "$1" == "-f" ]; then
    # doIt;
# else
    # read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    # echo "";
    # if [[ $REPLY =~ ^[Yy]$ ]]; then
        # doIt;
    # fi;
# fi;
unset doIt;
