#!/usr/bin/env bash

function syncDots() {
    rsync -avh --no-perms dotfiles/ ~;
    source ~/.bash_profile;
}

syncDots;