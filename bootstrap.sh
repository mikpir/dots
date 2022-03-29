#!/usr/bin/env bash

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "brew.sh" \
        --exclue "macos.sh" --exclue "npm.sh" --exclue "osprep.sh"
        --exclude "README.md" --exclude "LICENSE" -avh --no-perms . ~;
    source ~/.bash_profile;
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
